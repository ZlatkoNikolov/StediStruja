<%@ Page Title="Online Мониторинг" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OnlineMonitoring.aspx.cs" Inherits="Efergy3.OnlineMonitoring" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="area2-container">
        <div class="area2">
            <div class="breadcrumbs">
                <ul>
                    <li class="home">
                        <a href="Default.aspx" title="Go to Home Page">Почетна</a>
                        <span>/ </span>
                    </li>
                    <li class="category12">
                        <a href="Produkti.aspx" title="">Продукти</a>
                        <span>/ </span>
                    </li>
                    <li class="category13">
                        <strong>Online мониторинг</strong>
                    </li>
                </ul>
            </div>
            <div class="block block-freeshipping">
                <p>Free shipping on orders over $96.00</p>
            </div>
        </div>
    </div>

    <div class="main-container col2-left-layout">
        <div class="main">
            <div class="col-main2">
                <div class="page-title category-title">
                    <h1>Online monitoring</h1>
                </div>
                
                
                <p class="category-image">
                    <img src="http://efergy.com/media/catalog/category/ENGAGE-ANNIVERSARY-BANNER_productpage.jpg" alt="Online monitoring" title="Online monitoring"></p>
                <h1 class="cattitle">Продукти</h1>
                <ul class="products-grid first odd">
                </ul>
                <div class="category-products">




                    






                    <script type="text/javascript">decorateGeneric($$('ul.products-grid'), ['odd', 'even', 'first', 'last'])</script>

                    <!-- div class="toolbar-bottom">
            </div -->
                </div>
                <!--<div class="category-calculate-shipping-form"> 

    
    <div class="calculate-shipping-form" id="calculate-shipping-form">

        <div class="block1 main-title-form main-form">
            <div class="block1-title block1-title-parent">
                <strong>
                    <span>
                        Shipping Cost Calculator                    </span>
                </strong>
            </div>
        </div>

        <div class="main-content-form main-form">

            <div class="block1 block1-shipping-estimate block1-form">

                <div class="block1-content block1-content-fields">

                    <div class="block1-subtitle block1-subtitle-calculate">

                        <div class="text-description">
                            <p class="destination">Destination</p>
                            <p>Enter destination to get a shipping cost</p>
                        </div>

                    </div>

                    <div class="detail-form-fields">
                        <ul>

                                                            <li class="item">
                                    <label for="estimate_country" class="required">
                                        <em>*</em>
                                        Country                                    </label>
                                    <div class="input-box">
                                        <select name="estimate[country_id]" id="estimate_country" class="validate-select" title="Country" ><option value="" > </option><option value="AF" >Afghanistan</option><option value="AL" >Albania</option><option value="DZ" >Algeria</option><option value="AS" >American Samoa</option><option value="AD" >Andorra</option><option value="AO" >Angola</option><option value="AI" >Anguilla</option><option value="AQ" >Antarctica</option><option value="AG" >Antigua and Barbuda</option><option value="AR" >Argentina</option><option value="AM" >Armenia</option><option value="AW" >Aruba</option><option value="AT" >Austria</option><option value="AZ" >Azerbaijan</option><option value="BS" >Bahamas</option><option value="BH" >Bahrain</option><option value="BD" >Bangladesh</option><option value="BB" >Barbados</option><option value="BY" >Belarus</option><option value="BE" >Belgium</option><option value="BZ" >Belize</option><option value="BJ" >Benin</option><option value="BM" >Bermuda</option><option value="BT" >Bhutan</option><option value="BO" >Bolivia</option><option value="BA" >Bosnia and Herzegovina</option><option value="BW" >Botswana</option><option value="BV" >Bouvet Island</option><option value="BR" >Brazil</option><option value="IO" >British Indian Ocean Territory</option><option value="VG" >British Virgin Islands</option><option value="BN" >Brunei</option><option value="BG" >Bulgaria</option><option value="BF" >Burkina Faso</option><option value="BI" >Burundi</option><option value="KH" >Cambodia</option><option value="CM" >Cameroon</option><option value="CV" >Cape Verde</option><option value="KY" >Cayman Islands</option><option value="CF" >Central African Republic</option><option value="TD" >Chad</option><option value="CL" >Chile</option><option value="CN" >China</option><option value="CX" >Christmas Island</option><option value="CC" >Cocos [Keeling] Islands</option><option value="CO" >Colombia</option><option value="KM" >Comoros</option><option value="CG" >Congo - Brazzaville</option><option value="CD" >Congo - Kinshasa</option><option value="CK" >Cook Islands</option><option value="CR" >Costa Rica</option><option value="CI" >Côte d’Ivoire</option><option value="HR" >Croatia</option><option value="CU" >Cuba</option><option value="CY" >Cyprus</option><option value="DJ" >Djibouti</option><option value="DM" >Dominica</option><option value="DO" >Dominican Republic</option><option value="EC" >Ecuador</option><option value="EG" >Egypt</option><option value="SV" >El Salvador</option><option value="GQ" >Equatorial Guinea</option><option value="ER" >Eritrea</option><option value="ET" >Ethiopia</option><option value="FK" >Falkland Islands</option><option value="FO" >Faroe Islands</option><option value="FJ" >Fiji</option><option value="GF" >French Guiana</option><option value="PF" >French Polynesia</option><option value="TF" >French Southern Territories</option><option value="GA" >Gabon</option><option value="GM" >Gambia</option><option value="GE" >Georgia</option><option value="GH" >Ghana</option><option value="GI" >Gibraltar</option><option value="GL" >Greenland</option><option value="GD" >Grenada</option><option value="GP" >Guadeloupe</option><option value="GU" >Guam</option><option value="GT" >Guatemala</option><option value="GG" >Guernsey</option><option value="GN" >Guinea</option><option value="GW" >Guinea-Bissau</option><option value="GY" >Guyana</option><option value="HT" >Haiti</option><option value="HM" >Heard Island and McDonald Islands</option><option value="HN" >Honduras</option><option value="HK" >Hong Kong SAR China</option><option value="HU" >Hungary</option><option value="IN" >India</option><option value="ID" >Indonesia</option><option value="IR" >Iran</option><option value="IQ" >Iraq</option><option value="IE" >Ireland</option><option value="IM" >Isle of Man</option><option value="IL" >Israel</option><option value="JM" >Jamaica</option><option value="JP" >Japan</option><option value="JE" >Jersey</option><option value="JO" >Jordan</option><option value="KZ" >Kazakhstan</option><option value="KE" >Kenya</option><option value="KI" >Kiribati</option><option value="KW" >Kuwait</option><option value="KG" >Kyrgyzstan</option><option value="LA" >Laos</option><option value="LV" >Latvia</option><option value="LB" >Lebanon</option><option value="LS" >Lesotho</option><option value="LR" >Liberia</option><option value="LY" >Libya</option><option value="LT" >Lithuania</option><option value="MO" >Macau SAR China</option><option value="MG" >Madagascar</option><option value="MW" >Malawi</option><option value="MY" >Malaysia</option><option value="MV" >Maldives</option><option value="ML" >Mali</option><option value="MT" >Malta</option><option value="MH" >Marshall Islands</option><option value="MQ" >Martinique</option><option value="MR" >Mauritania</option><option value="MU" >Mauritius</option><option value="YT" >Mayotte</option><option value="MX" >Mexico</option><option value="FM" >Micronesia</option><option value="MN" >Mongolia</option><option value="MS" >Montserrat</option><option value="MA" >Morocco</option><option value="MZ" >Mozambique</option><option value="MM" >Myanmar [Burma]</option><option value="NA" >Namibia</option><option value="NR" >Nauru</option><option value="NP" >Nepal</option><option value="AN" >Netherlands Antilles</option><option value="NC" >New Caledonia</option><option value="NI" >Nicaragua</option><option value="NE" >Niger</option><option value="NG" >Nigeria</option><option value="NU" >Niue</option><option value="NF" >Norfolk Island</option><option value="MP" >Northern Mariana Islands</option><option value="KP" >North Korea</option><option value="OM" >Oman</option><option value="PK" >Pakistan</option><option value="PW" >Palau</option><option value="PS" >Palestinian Territories</option><option value="PA" >Panama</option><option value="PG" >Papua New Guinea</option><option value="PY" >Paraguay</option><option value="PE" >Peru</option><option value="PH" >Philippines</option><option value="PN" >Pitcairn Islands</option><option value="PL" >Poland</option><option value="PR" >Puerto Rico</option><option value="QA" >Qatar</option><option value="RE" >Réunion</option><option value="RU" >Russia</option><option value="RW" >Rwanda</option><option value="BL" >Saint Barthélemy</option><option value="SH" >Saint Helena</option><option value="KN" >Saint Kitts and Nevis</option><option value="LC" >Saint Lucia</option><option value="MF" >Saint Martin</option><option value="PM" >Saint Pierre and Miquelon</option><option value="VC" >Saint Vincent and the Grenadines</option><option value="WS" >Samoa</option><option value="ST" >São Tomé and Príncipe</option><option value="SA" >Saudi Arabia</option><option value="SN" >Senegal</option><option value="SC" >Seychelles</option><option value="SL" >Sierra Leone</option><option value="SG" >Singapore</option><option value="SB" >Solomon Islands</option><option value="SO" >Somalia</option><option value="GS" >South Georgia and the South Sandwich Islands</option><option value="KR" >South Korea</option><option value="LK" >Sri Lanka</option><option value="SD" >Sudan</option><option value="SR" >Suriname</option><option value="SJ" >Svalbard and Jan Mayen</option><option value="SZ" >Swaziland</option><option value="SY" >Syria</option><option value="TW" >Taiwan</option><option value="TJ" >Tajikistan</option><option value="TZ" >Tanzania</option><option value="TH" >Thailand</option><option value="TL" >Timor-Leste</option><option value="TG" >Togo</option><option value="TK" >Tokelau</option><option value="TO" >Tonga</option><option value="TT" >Trinidad and Tobago</option><option value="TN" >Tunisia</option><option value="TR" >Turkey</option><option value="TM" >Turkmenistan</option><option value="TC" >Turks and Caicos Islands</option><option value="TV" >Tuvalu</option><option value="UG" >Uganda</option><option value="UA" >Ukraine</option><option value="GB" selected="selected" >United Kingdom</option><option value="UY" >Uruguay</option><option value="UZ" >Uzbekistan</option><option value="VU" >Vanuatu</option><option value="VE" >Venezuela</option><option value="VN" >Vietnam</option><option value="WF" >Wallis and Futuna</option><option value="EH" >Western Sahara</option><option value="YE" >Yemen</option><option value="ZM" >Zambia</option><option value="ZW" >Zimbabwe</option></select>                                    </div>
                                </li>
                            


                                                            <li class="item">
                                    <label for="estimate_region_id" >
                                                                                State/Province                                    </label>

                                    <div class="input-box">
                                        <select id="estimate_region_id" name="estimate[region_id]" title="State/Province" style="display:none;">
                                            <option value="">Please select an option</option>
                                        </select>
                                        <script type="text/javascript">
                                            //<![CDATA[
                                            $('estimate_region_id').setAttribute('defaultValue',  '');
                                            //]]>
                                        </script>
                                        <input type="text" id="estimate_region" name="estimate[region]" value=""  title="State/Province" class="input-text" style="display:none;" />
                                    </div>
                                </li>
                                <script type="text/javascript">
                                    //<![CDATA[
                                    new RegionUpdater('estimate_country', 'estimate_region', 'estimate_region_id', {"config":{"show_all_regions":true,"regions_required":["AT","CA","EE","FI","FR","DE","LV","LT","RO","ES","CH","US"]},"LV":{"471":{"code":"\u0100da\u017eu novads","name":"\u0100da\u017eu novads"},"366":{"code":"Aglonas novads","name":"Aglonas novads"},"367":{"code":"LV-AI","name":"Aizkraukles novads"},"368":{"code":"Aizputes novads","name":"Aizputes novads"},"369":{"code":"Akn\u012bstes novads","name":"Akn\u012bstes novads"},"370":{"code":"Alojas novads","name":"Alojas novads"},"371":{"code":"Alsungas novads","name":"Alsungas novads"},"372":{"code":"LV-AL","name":"Al\u016bksnes novads"},"373":{"code":"Amatas novads","name":"Amatas novads"},"374":{"code":"Apes novads","name":"Apes novads"},"375":{"code":"Auces novads","name":"Auces novads"},"376":{"code":"Bab\u012btes novads","name":"Bab\u012btes novads"},"377":{"code":"Baldones novads","name":"Baldones novads"},"378":{"code":"Baltinavas novads","name":"Baltinavas novads"},"379":{"code":"LV-BL","name":"Balvu novads"},"380":{"code":"LV-BU","name":"Bauskas novads"},"381":{"code":"Bever\u012bnas novads","name":"Bever\u012bnas novads"},"382":{"code":"Broc\u0113nu novads","name":"Broc\u0113nu novads"},"383":{"code":"Burtnieku novads","name":"Burtnieku novads"},"384":{"code":"Carnikavas novads","name":"Carnikavas novads"},"387":{"code":"LV-CE","name":"C\u0113su novads"},"385":{"code":"Cesvaines novads","name":"Cesvaines novads"},"386":{"code":"Ciblas novads","name":"Ciblas novads"},"388":{"code":"Dagdas novads","name":"Dagdas novads"},"355":{"code":"LV-DGV","name":"Daugavpils"},"389":{"code":"LV-DA","name":"Daugavpils novads"},"390":{"code":"LV-DO","name":"Dobeles novads"},"391":{"code":"Dundagas novads","name":"Dundagas novads"},"392":{"code":"Durbes novads","name":"Durbes novads"},"393":{"code":"Engures novads","name":"Engures novads"},"472":{"code":"\u0112rg\u013cu novads","name":"\u0112rg\u013cu novads"},"394":{"code":"Garkalnes novads","name":"Garkalnes novads"},"395":{"code":"Grobi\u0146as novads","name":"Grobi\u0146as novads"},"396":{"code":"LV-GU","name":"Gulbenes novads"},"397":{"code":"Iecavas novads","name":"Iecavas novads"},"398":{"code":"Ik\u0161\u0137iles novads","name":"Ik\u0161\u0137iles novads"},"399":{"code":"Il\u016bkstes novads","name":"Il\u016bkstes novads"},"400":{"code":"In\u010dukalna novads","name":"In\u010dukalna novads"},"401":{"code":"Jaunjelgavas novads","name":"Jaunjelgavas novads"},"402":{"code":"Jaunpiebalgas novads","name":"Jaunpiebalgas novads"},"403":{"code":"Jaunpils novads","name":"Jaunpils novads"},"357":{"code":"J\u0113kabpils","name":"J\u0113kabpils"},"405":{"code":"LV-JK","name":"J\u0113kabpils novads"},"356":{"code":"LV-JEL","name":"Jelgava"},"404":{"code":"LV-JL","name":"Jelgavas novads"},"358":{"code":"LV-JUR","name":"J\u016brmala"},"406":{"code":"Kandavas novads","name":"Kandavas novads"},"412":{"code":"K\u0101rsavas novads","name":"K\u0101rsavas novads"},"473":{"code":"\u0136eguma novads","name":"\u0136eguma novads"},"474":{"code":"\u0136ekavas novads","name":"\u0136ekavas novads"},"407":{"code":"Kokneses novads","name":"Kokneses novads"},"410":{"code":"LV-KR","name":"Kr\u0101slavas novads"},"408":{"code":"Krimuldas novads","name":"Krimuldas novads"},"409":{"code":"Krustpils novads","name":"Krustpils novads"},"411":{"code":"LV-KU","name":"Kuld\u012bgas novads"},"413":{"code":"Lielv\u0101rdes novads","name":"Lielv\u0101rdes novads"},"359":{"code":"LV-LPX","name":"Liep\u0101ja"},"360":{"code":"LV-LE","name":"Liep\u0101jas novads"},"417":{"code":"L\u012bgatnes novads","name":"L\u012bgatnes novads"},"414":{"code":"LV-LM","name":"Limba\u017eu novads"},"418":{"code":"L\u012bv\u0101nu novads","name":"L\u012bv\u0101nu novads"},"415":{"code":"Lub\u0101nas novads","name":"Lub\u0101nas novads"},"416":{"code":"LV-LU","name":"Ludzas novads"},"419":{"code":"LV-MA","name":"Madonas novads"},"421":{"code":"M\u0101lpils novads","name":"M\u0101lpils novads"},"422":{"code":"M\u0101rupes novads","name":"M\u0101rupes novads"},"420":{"code":"Mazsalacas novads","name":"Mazsalacas novads"},"423":{"code":"Nauk\u0161\u0113nu novads","name":"Nauk\u0161\u0113nu novads"},"424":{"code":"Neretas novads","name":"Neretas novads"},"425":{"code":"N\u012bcas novads","name":"N\u012bcas novads"},"426":{"code":"LV-OG","name":"Ogres novads"},"427":{"code":"Olaines novads","name":"Olaines novads"},"428":{"code":"Ozolnieku novads","name":"Ozolnieku novads"},"432":{"code":"P\u0101rgaujas novads","name":"P\u0101rgaujas novads"},"433":{"code":"P\u0101vilostas novads","name":"P\u0101vilostas novads"},"434":{"code":"P\u013cavi\u0146u novads","name":"P\u013cavi\u0146u novads"},"429":{"code":"LV-PR","name":"Prei\u013cu novads"},"430":{"code":"Priekules novads","name":"Priekules novads"},"431":{"code":"Prieku\u013cu novads","name":"Prieku\u013cu novads"},"435":{"code":"Raunas novads","name":"Raunas novads"},"361":{"code":"LV-REZ","name":"R\u0113zekne"},"442":{"code":"LV-RE","name":"R\u0113zeknes novads"},"436":{"code":"Riebi\u0146u novads","name":"Riebi\u0146u novads"},"362":{"code":"LV-RIX","name":"R\u012bga"},"363":{"code":"LV-RI","name":"R\u012bgas novads"},"437":{"code":"Rojas novads","name":"Rojas novads"},"438":{"code":"Ropa\u017eu novads","name":"Ropa\u017eu novads"},"439":{"code":"Rucavas novads","name":"Rucavas novads"},"440":{"code":"Rug\u0101ju novads","name":"Rug\u0101ju novads"},"443":{"code":"R\u016bjienas novads","name":"R\u016bjienas novads"},"441":{"code":"Rund\u0101les novads","name":"Rund\u0101les novads"},"444":{"code":"Salacgr\u012bvas novads","name":"Salacgr\u012bvas novads"},"445":{"code":"Salas novads","name":"Salas novads"},"446":{"code":"Salaspils novads","name":"Salaspils novads"},"447":{"code":"LV-SA","name":"Saldus novads"},"448":{"code":"Saulkrastu novads","name":"Saulkrastu novads"},"455":{"code":"S\u0113jas novads","name":"S\u0113jas novads"},"449":{"code":"Siguldas novads","name":"Siguldas novads"},"451":{"code":"Skr\u012bveru novads","name":"Skr\u012bveru novads"},"450":{"code":"Skrundas novads","name":"Skrundas novads"},"452":{"code":"Smiltenes novads","name":"Smiltenes novads"},"453":{"code":"Stopi\u0146u novads","name":"Stopi\u0146u novads"},"454":{"code":"Stren\u010du novads","name":"Stren\u010du novads"},"456":{"code":"LV-TA","name":"Talsu novads"},"458":{"code":"T\u0113rvetes novads","name":"T\u0113rvetes novads"},"457":{"code":"LV-TU","name":"Tukuma novads"},"459":{"code":"Vai\u0146odes novads","name":"Vai\u0146odes novads"},"460":{"code":"LV-VK","name":"Valkas novads"},"364":{"code":"Valmiera","name":"Valmiera"},"461":{"code":"LV-VM","name":"Valmieras novads"},"462":{"code":"Varak\u013c\u0101nu novads","name":"Varak\u013c\u0101nu novads"},"469":{"code":"V\u0101rkavas novads","name":"V\u0101rkavas novads"},"463":{"code":"Vecpiebalgas novads","name":"Vecpiebalgas novads"},"464":{"code":"Vecumnieku novads","name":"Vecumnieku novads"},"365":{"code":"LV-VEN","name":"Ventspils"},"465":{"code":"LV-VE","name":"Ventspils novads"},"466":{"code":"Vies\u012btes novads","name":"Vies\u012btes novads"},"467":{"code":"Vi\u013cakas novads","name":"Vi\u013cakas novads"},"468":{"code":"Vi\u013c\u0101nu novads","name":"Vi\u013c\u0101nu novads"},"470":{"code":"Zilupes novads","name":"Zilupes novads"}},"LT":{"475":{"code":"LT-AL","name":"Alytaus Apskritis"},"476":{"code":"LT-KU","name":"Kauno Apskritis"},"477":{"code":"LT-KL","name":"Klaip\u0117dos Apskritis"},"478":{"code":"LT-MR","name":"Marijampol\u0117s Apskritis"},"479":{"code":"LT-PN","name":"Panev\u0117\u017eio Apskritis"},"480":{"code":"LT-SA","name":"\u0160iauli\u0173 Apskritis"},"481":{"code":"LT-TA","name":"Taurag\u0117s Apskritis"},"482":{"code":"LT-TE","name":"Tel\u0161i\u0173 Apskritis"},"483":{"code":"LT-UT","name":"Utenos Apskritis"},"484":{"code":"LT-VL","name":"Vilniaus Apskritis"}},"AT":{"102":{"code":"BL","name":"Burgenland"},"99":{"code":"KN","name":"K\u00e4rnten"},"96":{"code":"NO","name":"Nieder\u00f6sterreich"},"97":{"code":"OO","name":"Ober\u00f6sterreich"},"98":{"code":"SB","name":"Salzburg"},"100":{"code":"ST","name":"Steiermark"},"101":{"code":"TI","name":"Tirol"},"103":{"code":"VB","name":"Voralberg"},"95":{"code":"WI","name":"Wien"}}});
                                    //]]>
                                </script>
                            


                                                            <li class="item">
                                    <label for="city"  class="required" >
                                                                                    <em>*</em>
                                                                                City                                    </label>

                                    <div class="input-box">
                                        <input class="input-text required-entry" id="estimate_city" type="text" name="estimate[city]" value="" />
                                    </div>
                                </li>
                            


                                                            <li class="item">
                                    <label for="estimate_postcode" class="required" >
                                                                                    <em>*</em>
                                                                                Zip/Postal Code                                    </label>

                                    <div class="input-box">
                                        <input class="input-text validate-postcode  required-entry" type="text" id="estimate_postcode" name="estimate[post_code]" value="" />
                                    </div>
                                </li>
                            
                                                            <li class="item radio">
                                    <label class='include_cart_label'>Include Cart Items</label>
                                    <div class="input-box">
                                        <div class="left-radio">
                                            <input type="radio" id="estimate_cart_yes" name="estimate[include_cart]" value="1"  />
                                            <label for="estimate_cart_yes">Yes</label>
                                        </div>
                                        <div class="right-radio">
                                            <input type="radio" id="estimate_cart_no" name="estimate[include_cart]" value="0"  checked="checked" />
                                            <label for="estimate_cart_no">No</label>
                                        </div>
                                    </div>
                                </li>
                            
                            <li class="item ">

                                <div class="bottom-button">

                                    

                                    <div class="calculate-button">
                                        <button type="button" title="Calculate" onclick="calculateShipping()" class="button">
                                            <span><span>Calculate</span></span>
                                        </button>
                                    </div>

                                </div>

                            </li>

                        </ul>
                    </div>



                    <script type="text/javascript">decorateList('shipping-estimation-form');</script>

                </div>


            </div>

            <div id="calculate-shipping-result" class="block1-result">
                <div class="block1 block1-shipping-estimate block1-shipping-results">
                    <div class="block1-title result-title">
                        <strong>
                            <span class="capitalize">
                                Shipping Rates                            </span>
                        </strong>
                    </div>

                    <div>
                        <span class="ajax_loader" id="ajax_loader" style="display: none;">
                            <img src='http://efergy.com/skin/frontend/uk/default/images/cmsmart/calculateshipping/ajax-loader.gif'/>
                        </span>
                    </div>
                </div>
            </div>

        </div>

    </div>

    

    <script type="text/javascript">

        $j(document).ready(function(){

			console.log('if product');
            


            
                
                                    $j('<a class="fancybox" href="#calculate-shipping-form"><span class="gh-green-highlight">Calculate</span></a>').prependTo('.category-shipping-form');

                
                $j('.category-calculate-shipping-form').hide();

//                $j('.fancybox').fancybox();

                $j('.fancybox').magnificPopup({
                    type:'inline',
                    midClick: true // Allow opening popup on middle mouse click. Always set it to true if you don't provide alternative source in href.
                });

                $j('.fancybox').click(function(){

                    $j('#calculate-shipping-result .block1-shipping-results .block1-content').hide();

                    $j('.category-shipping-form').removeClass('category-shipping-form-active');

                    $j(this).parent().addClass('category-shipping-form-active');

                });

            
        });



        function getLocation(){

            var url = "http://efergy.com/uk/calculateshipping/index/index/";

            $j('.auto-ip-button button').hide();

            $j('.ajax_auto_ip').show();

            $j.ajax({
                url : url,
                type : 'post',
                dataType : 'json',
                success: function(data){

                    $j('.ajax_auto_ip').hide();

                    $j('.auto-ip-button button').show();

                    $j('#estimate_country').val(data.countryId);

                    $j('#estimate_region').val(data.region).show();

                    $j('#estimate_region_id').hide();

                    $j('#estimate_city').val(data.city);

                    $j('#estimate_postcode').val(data.zipcode);

                }
            });

        }



        //<![CDATA[
        function calculateShipping(){
            $j(".nicescroll-rails").remove();

            var url = 'http://efergy.com/uk/calculateshipping/index/calculate/id/13/';

                            var elements = $j('#calculate-shipping-form input, #calculate-shipping-form select, .category-shipping-form-active input');
                        var validFlag = false;

            elements.each(function(){
                /*if(!Validation.validate(this)){
                    validFlag = true;
                }*/
				console.log(this);
            });

            if(validFlag == true){
                return;
            }
			
            var data = elements.serialize();
            $j('#calculate-shipping-result').show();
            $j('#ajax_loader').show();
            $j('.calculate-shipping-form #calculate-shipping-result .block1-content').hide();

            $j.ajax({
                url : url,
                type : 'post',
                dataType : 'json',
                data : data,
                success: function(data){
                    $j('#ajax_loader').hide();
                    if(data.status == 0){
                        alert(data.message);
                    }else if(data.status == 1){
                        alert(data.message);
                        $j('.calculate-shipping-form #calculate-shipping-result').replaceWith(data.result);
                    }else{
                        $j('.calculate-shipping-form #calculate-shipping-result').replaceWith(data.result);
                    }
                }
            });

        }
        //]]>
    </script>
 </div>-->
                <style>
                    .price-box {
                        /*margin-top: 40px !important;*/
                    }

                    .actions {
                        /*margin-top: 35px !important*/
                    }
                </style>
                <asp:Repeater ID="repeaterProdukti" runat="server">
                    <HeaderTemplate>

                        <div class="">
                            <h1 class="cattitle">Online Мониторинг </h1>
                            <ul class="products-grid last even">
                    </HeaderTemplate>

                    <ItemTemplate>

                        <div class="">

                            <li class="item last">
                                <h2 class="product-name">
                                    <a href='<%#Eval("detaliProduct") %>' title="ego smart socket and app"><%# Eval("proname") %></a>

                                </h2>

                                <a href='<%#Eval("detaliProduct") %>' title="ego smart socket and app" class="product-image">
                                    <img src='<%# Eval("image") %>' alt="ego smart socket and app" />

                                </a>

                                <div class="price-box">
                                    <p class="old-price">
                                        <span class="price" id="old-price-220">£<%# Eval("oldprice") %></span>
                                    </p>

                                    <p class="special-price">
                                        <span class="price" id="product-price-220">£<%# Eval("price") %></span>
                                    </p>
                                </div>

                                <div class="actions">
                                    <button type="button" title="Add to Cart" class="button btn-cart" onclick="setLocation('http://efergy.com/uk/checkout/cart/add/uenc/aHR0cDovL2VmZXJneS5jb20vdWsvcHJvZHVjdHM,/product/220/form_key/uO7C9VpSeS1Lpe19/')"><span><span>Додади</span></span></button>
                                </div>
                                <ul class="add-to-links">
                                    <li><a href="http://efergy.com/uk/wishlist/index/add/product/220/form_key/uO7C9VpSeS1Lpe19/" class="link-wishlist">Додади во листа</a></li>
                                    <li><span class="separator">|</span> <a href="http://efergy.com/uk/products/ego-smart-socket" class="link-compare">Види продукт</a></li>
                                </ul>
                            </li>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul>
                            </div>
                            
                
                    </FooterTemplate>
                </asp:Repeater>
            </div>
            <div class="col-left sidebar">
                <div class="block block-compare">
                    <div class="block-title">
                        <strong><span>Compare Products                    </span></strong>
                    </div>
                    <div class="block-content">
                        <p class="empty">You have no items to compare.</p>
                    </div>
                </div>
                <div class="block block-cart">
                    <div class="block-title">
                        <strong><span>Моја Кошница</span></strong>
                    </div>
                    <div class="block-content">
                        <p class="empty">Немате продукти во Вашата кошница</p>
                    </div>
                </div>
                <div class="block block-viewed">
                    <div class="block-title">
                        <strong><span>Recently Viewed Products</span></strong>
                    </div>
                    <div class="block-content">
                        <ol id="recently-viewed-items">
                            <li class="item last odd">
                                <p class="product-name"><a href="http://efergy.com/uk/ego">ego smart Wi-Fi socket</a></p>
                            </li>
                        </ol>
                        <script type="text/javascript">decorateList('recently-viewed-items');</script>
                    </div>
                </div>
                <div class="block block-banner">
                    <div class="block-content">
                        <a href="http://efergy.com/uk/checkout/cart/" title="Our customer service is available 24/7. Call us at (555) 555-0123.">
                            <img src="http://efergy.com/skin/frontend/uk/default/images/media/col_left_callout.jpg" alt="Our customer service is available 24/7. Call us at (555) 555-0123.">
                        </a>
                    </div>
                </div>
                <div class="block block-subscribe">
                    <div class="block-title">
                        <strong><span>Newsletter</span></strong>
                    </div>
                    <form action="http://efergy.us4.list-manage.com/subscribe/post?u=57a2e9672cd7921dbdf37a3c4&amp;id=f437282147" method="post" id="newsletter-validate-detail" name="mc-embedded-subscribe-form" class="validate" target="_blank">
                        <div class="block-content">
                            <label for="newsletter">Sign Up for Our Newsletter:</label>
                            <div class="input-box">
                                <input type="text" name="EMAIL" id="mce-EMAIL" placeholder="email address" title="Sign up for our newsletter" class="input-text required-entry validate-email">
                            </div>
                            <div class="actions">
                                <button type="submit" name="subscribe" id="mc-embedded-subscribe" value="Subscribe" title="Subscribe" class="button"><span><span>Go</span></span></button>
                            </div>
                        </div>
                    </form>
                    <script type="text/javascript">
                        //<![CDATA[
                        var newsletterSubscriberFormDetail = new VarienForm('newsletter-validate-detail');
                        //]]>
                    </script>
                </div>


            </div>
        </div>
    </div>


</asp:Content>
