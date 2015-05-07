<%@ Page Title="Штеди струја" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Efergy3._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                
                
                
            </hgroup>
            <p>
                
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    


    <div id="slider1_container" style="position: relative; top: 0px; left: 0px; width: 600px; height: 300px; overflow: hidden; ">

        <!-- Loading Screen -->
        <div u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;
                background-color: #000000; top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
            <div style="position: absolute; display: block; background: url(/images/SLIDER/loading.gif) no-repeat center center;
                top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
        </div>

        <!-- Slides Container -->
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 600px; height: 300px; overflow: hidden;">
            <div>
                <img u="image" src="Images/SLIDER/december_deal_free_shipping_uk2.jpg" />
            </div>
            <div>
                <img u="image" src="Images/SLIDER/december_deal_mse_uk2.jpg" />
            </div>
            <div>
                <img u="image" src="Images/SLIDER/e2_elite_engage_kit_english2.png" />
            </div>
            <div>
                <img u="image" src="Images/SLIDER/new_ego_uk_eu2.jpg" />
            </div>
            <div>
                <img u="image" src="Images/SLIDER/Newsletter2_sign_up_now2.jpg" />
            </div>
           
            
        </div>
        

    <style>
            /* jssor slider bullet navigator skin 05 css */
            /*
            .jssorb05 div           (normal)
            .jssorb05 div:hover     (normal mouseover)
            .jssorb05 .av           (active)
            .jssorb05 .av:hover     (active mouseover)
            .jssorb05 .dn           (mousedown)
            */
            .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
                background: url(/images/SLIDER/b05.png) no-repeat;
                overflow: hidden;
                cursor: pointer;
            }

            .jssorb05 div {
                background-position: -7px -7px;
            }

                .jssorb05 div:hover, .jssorb05 .av:hover {
                    background-position: -37px -7px;
                }

            .jssorb05 .av {
                background-position: -67px -7px;
            }

            .jssorb05 .dn, .jssorb05 .dn:hover {
                background-position: -97px -7px;
            }
        </style>

    <div u="navigator" class="jssorb05" style="position: absolute; bottom: 16px; right: 6px;">
            <!-- bullet navigator item prototype -->
            <div u="prototype" style="POSITION: absolute; WIDTH: 16px; HEIGHT: 16px;"></div>
        </div>

    <style>
            /* jssor slider arrow navigator skin 12 css */
            /*
            .jssora12l              (normal)
            .jssora12r              (normal)
            .jssora12l:hover        (normal mouseover)
            .jssora12r:hover        (normal mouseover)
            .jssora12ldn            (mousedown)
            .jssora12rdn            (mousedown)
            */
            .jssora12l, .jssora12r, .jssora12ldn, .jssora12rdn {
                position: absolute;
                cursor: pointer;
                display: block;
                background: url(/images/SLIDER/a12.png) no-repeat;
                overflow: hidden;
            }

            .jssora12l {
                background-position: -16px -37px;
            }

            .jssora12r {
                background-position: -75px -37px;
            }

            .jssora12l:hover {
                background-position: -136px -37px;
            }

            .jssora12r:hover {
                background-position: -195px -37px;
            }

            .jssora12ldn {
                background-position: -256px -37px;
            }

            .jssora12rdn {
                background-position: -315px -37px;
            }
        </style>

    <span u="arrowleft" class="jssora12l" style="width: 30px; height: 46px; top: 123px; left: 0px;">
        </span>
        <!-- Arrow Right -->
        <span u="arrowright" class="jssora12r" style="width: 30px; height: 46px; top: 123px; right: 0px">
        </span>
        <!-- Arrow Navigator Skin End -->
        <a style="display: none" href="http://www.jssor.com">Bootstrap Slider</a>


    </div>


    <p></p>
       
      
        
        <p>
            <img class="img-sep" src="Images/bottomshadow.jpg" />
        </p>
    
    <h1><span style="color: #447b20; margin-left: 2%;">Најпродавани електронски монитори</span></h1>

    <ul class="products-gridhome first odd">
		<li class="item last">
		<h2 class="product-name"><a href="http://efergy.com/uk/ego-smart-socket" title="ego smart socket and app)">ego smart socket and app</a></h2>
		<a href="http://efergy.com/uk/ego-smart-socket" title="ego smart socket and app">
		    <img class="product-img" src="Images/Sliki_pocetna/ego_app_and_socket_uk_2_1_1.jpg" alt="ego smart socket and app" style="vertical-align: middle; margin-left: 40px; margin-right: 40px;">
		</a>
		

        
    <div class="price-box">
                                
                    <p class="old-price">
              
                <span class="price" id="old-price-220-new">
                    £44.95                </span>
            </p>

                        <p class="special-price">
            
                <span class="price" id="product-price-220-new">
                    £39.95                </span>
            </p>
                    
    
        </div>

					<div class="actions">
				<button type="button" class="button btn-cart" title="Buy" now"="" onclick="setLocation('http://efergy.com/uk/checkout/cart/add/uenc/aHR0cDovL2VmZXJneS5jb20v/product/220/form_key/QhxF18iXAk0FDTuo/')"><span><span>Нарачај</span></span></button>
			</div>
			</li>
		<li class="item last">
		<h2 class="product-name"><a href="http://efergy.com/uk/elite-classic" title="elite classic)">elite classic</a></h2>
		<a href="http://efergy.com/uk/elite-classic" title="elite classic">
		    <img class="product-img" src="Images/Sliki_pocetna/elite_group_v1_4.jpg" alt="elite classic" style="vertical-align: middle; margin-left: 40px; margin-right: 40px;">
		</a>
		

        
    <div class="price-box">
                                                            <span class="regular-price" id="product-price-32-new">
                    <span class="price">£39.95</span>                </span>
                        
    
                
                <a href="http://efergy.com/uk/elite-classic" class="minimal-price-link">
                    <span class="label">As low as:</span>
            <span class="price" id="product-minimal-price-32-new">
                £35.95            </span>
                </a>
                </div>

					<div class="actions">
				<button type="button" class="button btn-cart" title="Buy" now"="" onclick="setLocation('http://efergy.com/uk/checkout/cart/add/uenc/aHR0cDovL2VmZXJneS5jb20v/product/32/form_key/QhxF18iXAk0FDTuo/')"><span><span>Нарачај</span></span></button>
			</div>
			</li>
		<li class="item last">
		<h2 class="product-name"><a href="http://efergy.com/uk/engage-hub-kit" title="engage hub kit)">engage hub kit</a></h2>
		<a href="http://efergy.com/uk/engage-hub-kit" title="engage hub kit">
		    <img class="product-img" src="Images/Sliki_pocetna/engage_hubkit_2_4_1.jpg" alt="engage hub kit" style="vertical-align: middle; margin-left: 40px; margin-right: 40px;">
		</a>
		

        
    <div class="price-box">
                                                            <span class="regular-price" id="product-price-6-new">
                    <span class="price">£59.95</span>                </span>
                        
    
                
                <a href="http://efergy.com/uk/engage-hub-kit" class="minimal-price-link">
                    <span class="label">As low as:</span>
            <span class="price" id="product-minimal-price-6-new">
                £53.95            </span>
                </a>
                </div>

					<div class="actions">
				<button type="button" class="button btn-cart" title="Buy" now"="" onclick="setLocation('http://efergy.com/uk/checkout/cart/add/uenc/aHR0cDovL2VmZXJneS5jb20v/product/6/form_key/QhxF18iXAk0FDTuo/')"><span><span>Нарачај</span></span></button>
			</div>
			</li>
		<li class="item last">
		<h2 class="product-name"><a href="http://efergy.com/uk/engage-hub-solo" title="    engage hub solo)">    engage hub solo</a></h2>
		<a href="http://efergy.com/uk/engage-hub-solo" title="    engage hub solo">
		    <img class="product-img" src="Images/Sliki_pocetna/engage_hub_solo_2_2.jpg" alt="    engage hub solo" style="vertical-align: middle; margin-left: 40px; margin-right: 40px;">
		</a>
		

        
    <div class="price-box">
                                                            <span class="regular-price" id="product-price-10-new">
                    <span class="price">£39.95</span>                </span>
                        
    
                
                <a href="http://efergy.com/uk/engage-hub-solo" class="minimal-price-link">
                    <span class="label">As low as:</span>
            <span class="price" id="product-minimal-price-10-new">
                £35.95            </span>
                </a>
                </div>

					<div class="actions">
				<button type="button" class="button btn-cart" title="Buy" now"="" onclick="setLocation('http://efergy.com/uk/checkout/cart/add/uenc/aHR0cDovL2VmZXJneS5jb20v/product/10/form_key/QhxF18iXAk0FDTuo/')"><span><span>Нарачај</span></span></button>
			</div>
			</li>
	</ul>

    <p>
            <img class="img-sep" src="Images/bottomshadow.jpg" />
        </p>
    <div id="homepage_block">
<div id="product_support">
<h1>Кој продукт најмногу Ви одговара?</h1>
<a href="http://efergy.com/uk/comparison/"><img title="energy monitor promotional videos" src="Images/Sliki_pocetna/productcomparison.jpg" alt="efergy energy monitor promotional videos"></a>
<p>Не сте сигурни кој монитор за енергија најмногу Ви одговара? Проверете ја нашата табела со споредба и откријте! Online или offline мониторинг на енергијата, мобилен мониторинг, превземање на податоци за PC/Mac.</p>
</div>
<div id="engage_web_block">
<h1>Engage Платформа</h1>
<p>Engage е Вашиот нов online монитор за енергија. Online платформа која што ја прикажува вашата потрошувачка на струја во реално време. Проверете ја Вашата потрошувачка било кога, од било каде.<br><br><img src="Images/Sliki_pocetna/community_engage_photo_2014.jpg" alt="Engage energy portal" width="316" height="162">.</p>
</div>
<div id="product_support2" class="contactus">
<h1>Имате прашања? Контактирајте не!</h1>
<a href="http://efergy.com/uk/support/"><img title="energy monitor support" src="Images/Sliki_pocetna/productsupport.jpg" alt="efergy energy monitor support"></a>
<p>Ви треба поддршка за тоа како функционираат нашите монитори? Превземете ги нашите брошури со инструкции, прирачници, погледнете како да го инсталирате електронскиот монитор или прочитајте ги најчесто поставуваните прашања.</p>
</div>
</div>

</asp:Content>
