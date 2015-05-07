/**
 * Magento
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 *
 * @category    Sprinnet
 * @package     Sprinnet_VatEnhancer
 * @copyright   Copyright (c) 2014 SPRINNET Systems, s.r.o. (http://www.sprinnet.com/)
 * @license     http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */

var updateCheckoutByVat = function()
{
    // FireCheckout
    if (typeof(checkout) == 'object' && typeof(FireCheckout) !== "undefined") {
        checkout.update(checkout.urls.billing_address);
    }
    // Onestepcheckout compatibility (http://www.onestepcheckout.com/?aid=194)
    else if ( document.getElementById('onestepcheckout-form') ) {
        get_save_billing_function(document.location.href + 'ajax/save_billing', document.location.href + 'ajax/set_methods_separate')();
    }
    // Compatibility for FME
    else if ( document.getElementById('onestepcheckout-form') ) {
        billing.saveCountry();
    }
    // Compatibility with Aheadworks OnePageCheckout
    else if( typeof(AWOnestepcheckoutCoreUpdater) != "undefined")
    {
        AWOnestepcheckoutCoreUpdater.startRequest(Mage.Cookies.path+'/onestepcheckout/ajax/saveAddress/');
    }
    // EcomDev CheckItOut compatibility
    else if (typeof(review) == 'object') { review.load(); }
    // Vinagento_Oscheckout
    else if (typeof(onestepcheckout) == 'object')  { onestepcheckout.reloadReview(); }
    // GoMage Lightcheckout
    else if (typeof(checkout) == 'object' && typeof(Lightcheckout) !== "undefined") {
        checkout.submit(checkout.getFormData(), 'get_totals');
    }
    // Ecommerceteam EasyCheckout
    else if( typeof(EasyCheckout) !== "undefined")
    {
        EasyCheckout.instance.addressChangedEvent();
    }
    /*
    // MageStore Onestepcheckout
    else if ( document.getElementById('checkout-review-load') )
    {
        $$('select[name="billing[country_id]"] option').each(function(o) {
            if(o.readAttribute('value') == response.countryCode) {o.selected = true;}
        });

        save_address_information(save_address_url);
    }
    // IWD Checkout
    else (typeof(checkout) == 'object' )
    {
        checkout.update({'review': 1});
    }
    */

}

var validateVat = function(vat, country_id, input_id, op_mode, address_type, address_id)
{
    if(typeof(address_id) == 'undefined') { address_id = 0; }

    try
    {
        if( typeof(vat) == "string" && vat.length > 0 )
        {
            var country = $(country_id).value;

            switch(op_mode)
            {
                case 'SINGLE':
                    $('checkrsp').update('<ul><li class="notice-msg"></li></ul>');
                    break;
                case 'MULTI':
                    $(address_type+':checkrsp').update('<ul><li class="notice-msg"></li></ul>');
                    break;
            }

            if( vat.match(new RegExp('^[A-Z][A-Z]')))
            {
                $(input_id).removeClassName('validation-passed');
                $(input_id).addClassName('validation-failed');

                var error_message = Translator.translate('Please remove country code from your VAT number.');

                switch(op_mode)
                {
                    case 'SINGLE':
                        $('checkrsp').update('<ul><li class="notice-msg">'+error_message+'</li></ul>');
                        break;
                    case 'MULTI':
                        $(address_type+':checkrsp').update('<ul><li class="notice-msg">'+error_message+'</li></ul>');
                        break;
                }
                return;
            }

            if( vat.match(new RegExp('^[a-zA-Z0-9]+$')))
            {
                new Ajax.Request(vat_enchacer_url, {
                    method:'post',
                    parameters:'taxvat='+vat+'&country='+country+'&op_mode='+op_mode+'&address_type='+address_type+'&address_id='+address_id,
                    onLoading:function ()
                    {
                        switch(op_mode)
                        {
                            case 'SINGLE':
                                $('vatLoader').show();
                                break;
                            case 'MULTI':
                                $(address_type+':vatLoader').show();
                                break;
                        }
                    },
                    onComplete:function ()
                    {
                        switch(op_mode)
                        {
                            case 'SINGLE':
                                $('vatLoader').hide();
                                break;
                            case 'MULTI':
                                $(address_type+':vatLoader').hide();
                                break;
                        }
                    },
                    onSuccess:function (transport)
                    {
                        var response = transport.responseText.evalJSON();
                        var output = '<ul class="vat_validation-messages" style="margin-top:5px;">';

                        if (response.valid_vat == true && response.success == true ) {
                            $(input_id).removeClassName('validation-failed');
                            $(input_id).addClassName('validation-passed');

                            output += '<li class="success-msg">';
                            output += (Translator.translate('Your VAT number is valid.'));
                            output += '</li>';
                            output += '</ul>';

                        } else if (response.valid_vat == false && response.success == true ) {
                            $(input_id).removeClassName('validation-passed');
                            $(input_id).addClassName('validation-failed');
                            output += '<li class="error-msg">';
                            output += (Translator.translate('Your VAT number is invalid, please check the syntax.'));
                            output += '</li></ul>';
                        } else {
                            $(input_id).removeClassName('validation-passed');
                            $(input_id).addClassName('validation-failed');
                            output += '<li class="notice-msg">';
                            switch (response.faultstring) {
                                case "INVALID_INPUT":
                                    output += (Translator.translate('The given VAT number is invalid, please check the syntax. If this error remains please contact us directly to register a customer account with exempt from taxation with us.'));
                                    break;
                                case "SERVICE_UNAVAILABLE":
                                case "SERVER_BUSY":
                                    output += (Translator.translate('Currently the European VIES service is unavailable, but you can proceed with your registration and validate later from your customer account management.'));
                                    break;
                                case "MS_UNAVAILABLE":
                                case "TIMEOUT":
                                    output += (Translator.translate('Currently the member state service is unavailable, we could not validate your VAT number to issue an VAT exempt order. Anyhow you can proceed with your registration and validate later in your customer account.'));
                                    break;
                                default:
                                    output += (Translator.translate('There was an error processing your request. If this error remains please contact us directly to register a customer account with exempt from taxation with us.'));
                                    break;
                            }
                            output += '</li></ul>';
                        }

                        switch(op_mode)
                        {
                            case 'SINGLE':
                                $('checkrsp').update(output);
                                break;
                            case 'MULTI':
                                $(address_type+':checkrsp').update(output);
                                break;
                            default:break;
                        }

                        updateCheckoutByVat();
                    },
                    onFailure:function () {
                        switch(op_mode)
                        {
                            case 'SINGLE':
                                $('checkrsp').update('<ul><li class="error-msg">'+Translator.translate('There was an error processing your request. If this error remains please contact us directly to register a customer account with exempt from taxation with us.')+'</li></ul>');
                                break;
                            case 'MULTI':
                                $(address_type+':checkrsp').update('<ul><li class="error-msg">'+Translator.translate('There was an error processing your request. If this error remains please contact us directly to register a customer account with exempt from taxation with us.')+'</li></ul>');
                                break;
                        }
                    }
                });//endajax


            } else {
                $(input_id).removeClassName('validation-passed');
                $(input_id).addClassName('validation-failed');
                var error_message = Translator.translate('Please remove unused characters from your VAT number.');
                switch(op_mode)
                {
                    case 'SINGLE':
                        $('checkrsp').update('<ul><li class="notice-msg">'+error_message+'</li></ul>');
                        break;
                    case 'MULTI':
                        $(address_type+':checkrsp').update('<ul><li class="notice-msg">'+error_message+'</li></ul>');
                        break;
                }
            }
        } else {
            new Ajax.Request(vat_enchacer_url, {
                method:'post',
                parameters:'vatid=removed'
            });//endajax

            switch(op_mode)
            {
                case 'SINGLE':
                    $('checkrsp').update();
                    break;
                case 'MULTI':
                    $(address_type+':checkrsp').update();
                    break;
            }

            updateCheckoutByVat();

        }

    } catch (error) {
        switch(op_mode)
        {
            case 'SINGLE':
                $('checkrsp').update('<ul><li class="error-msg">'+Translator.translate('There was an error processing your request. If this error remains please contact us directly to register a customer account with exempt from taxation with us.')+' '+error+'</li></ul>');
                break;
            case 'MULTI':
                $(address_type+':checkrsp').update('<ul><li class="error-msg">'+Translator.translate('There was an error processing your request. If this error remains please contact us directly to register a customer account with exempt from taxation with us.')+' '+error+'</li></ul>');
                break;
        }
    }

}


var vatValidation = function() {
    var op_mode = 'SINGLE';
    this.field_id = 'taxvat';
    this.prefix = '';
    this.address_id = 0;
    this.country_id = 'country_id';

    this.setOpMode = function ()
    {
        if( document.body.contains(document.getElementById('billing:vat_id'))) {
            this.field_id = 'vat_id';
            this.prefix = 'billing:';
            op_mode = 'MULTI';

        } else if( document.body.contains(document.getElementById('vat_id'))) {
            this.field_id = 'vat_id';
            this.prefix = '';

        } else {
            if( document.body.contains(document.getElementById('billing:taxvat'))) {
                this.field_id = 'taxvat';
                this.prefix = 'billing:';
            } else if( document.body.contains(document.getElementById('taxvat')) ) {
                this.field_id = 'taxvat';
                this.prefix = '';
            }
        }

        if( document.body.contains(document.getElementById('billing:country_id'))) {
            this.country_id = 'billing:country_id';
        } else if( document.body.contains(document.getElementById('country_id'))) {
            this.country_id = 'country_id';
        } else if( document.body.contains(document.getElementById('country'))) {
            this.country_id = 'country';
        } else if( document.body.contains(document.getElementById('billing_country_id'))) {
            this.country_id = 'billing_country_id';
        }
    };

    this.setListener = function()
    {
        var addr_id = this.address_id;
        var country_id = this.country_id;

        if( this.field_id == 'taxvat' )
        {
            var input_id = this.prefix+this.field_id;
            $(this.prefix+this.field_id).on('blur', function() {
                var vat = this.value.toUpperCase();
                validateVat(vat, country_id, input_id, op_mode, 'billing', addr_id);
            });

        } else {
            var input_id = this.prefix+this.field_id;
            $(this.prefix+this.field_id).on('blur', function() {
                var vat = this.value.toUpperCase();
                validateVat(vat, country_id, input_id, op_mode, 'billing', addr_id);
            });

            if( op_mode == 'MULTI' && document.body.contains(document.getElementById('shipping:vat_id')) )
            {
                var input_id_ship = 'shipping:vat_id';
                $(input_id_ship).on('blur', function() {
                    var vat = this.value.toUpperCase();
                    validateVat(vat, 'shipping:country_id', input_id_ship, op_mode, 'shipping', addr_id);
                });
            }

        }
    }


    this.addResponseFields = function(vat_loader_src)
    {
        this.wait_message = '<img class="v-middle" title="'+Translator.translate('Please wait while we validate your VAT-ID')+'" alt="'+Translator.translate('Please wait while we validate your VAT-ID')+'" src="'+ vat_loader_src +'">' +
            '<span> '+Translator.translate('Please wait while we validate your VAT-ID')+'</span></div>';

        switch(op_mode)
        {
            case 'SINGLE':
                $(this.prefix+this.field_id).insert({
                    after: '<div id="vatLoader">' +
                        this.wait_message +
                        '<div id="checkrsp"></div>'
                });
                $('vatLoader').hide();
                break;

            case 'MULTI':
                $('billing:'+this.field_id).insert({
                    after: '<div id="billing:vatLoader">' +
                        this.wait_message +
                        '<div id="billing:checkrsp"></div>'
                });
                $('billing:vatLoader').hide();

                if( document.body.contains(document.getElementById('shipping:vat_id')) )
                {
                    $('shipping:'+this.field_id).insert({
                        after: '<div id="shipping:vatLoader">' +
                            this.wait_message +
                            '<div id="shipping:checkrsp"></div>'
                    });
                    $('shipping:vatLoader').hide();
                }

                break;
        }
    }

    this.getParams = function(url)
    {
        var parts = url.split('/').slice(1);
        if( url.indexOf("customer/address/edit/id") != -1 )
        {
            this.address_id = parts[parts.length-2];
        }
    }

}

document.observe("dom:loaded", function()
{
    var vatValidator = new vatValidation();
    vatValidator.setOpMode();
    vatValidator.getParams(location.pathname);
    vatValidator.setListener();
    vatValidator.addResponseFields(vat_loader_src);
});