var EventDispatcher=Class.create({});Object.extend(EventDispatcher.prototype,{buildListenerChain:function(){if(!this.listenerChain)
this.listenerChain={};},addEventListener:function(type,listener){this.buildListenerChain();if(!this.listenerChain[type])
this.listenerChain[type]=[listener];else
this.listenerChain[type].push(listener);},hasEventListener:function(type){return(typeof this.listenerChain[type]!="undefined");},removeEventListener:function(type,listener){if(!this.hasEventListener(type))
return false;for(var i=0;i<this.listenerChain[type].length;i++)
if(this.listenerChain[type][i]==listener)
this.listenerChain[type].splice(i,1);},dispatchEvent:function(type,args){this.buildListenerChain();if(!this.hasEventListener(type))
return false;this.listenerChain[type].any(function(f){return(f(args)==false?true:false);});},on:function(type,listener){this.addEventListener(type,listener);},fire:function(type,args){this.dispatchEvent(type,args);}});