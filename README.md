SPREE GOOGLE TAG MANAGER PLUGIN
============

[![Gem Version](https://badge.fury.io/rb/spree_gtm.svg)](https://badge.fury.io/rb/spree_gtm)
 [![Code Climate](https://codeclimate.com/github/RostislavKorin/spree_gtm/badges/gpa.svg)](https://codeclimate.com/github/RostislavKorin/spree_gtm)
 [![Build Status](https://travis-ci.org/RostislavKorin/spree_gtm.svg?branch=master)](https://travis-ci.org/RostislavKorin/spree_gtm)

DESCRIPTION
--------------------------------
spree_gtm  is an extension to Spree (a complete open source commerce solution for Ruby on Rails) that uses for implementation Google Tag Manager

REQUIREMENTS
--------------------------------
Spree Core 3.0.0 or greater

Installation
--------------------------------

Add to your spree shop Gemfile

    gem 'spree_gtm'

Run bundle install

Configuration
--------------------------------

Go to admin >  Configuration > gtm, fill in your gtm account id

Examples
--------------------------------
This is an exemple of configuration s2m order tag:

```
<script type="text/javascript">
  <!--
    function _s2m_t()
    {
      var s2m_shop = S2MOrderTransaction( 1347, "4.1.20160413" );
      var orderInfo = new Object();
      orderInfo.trans_id     = {{transactionId}};
      orderInfo.trans_type   = "order";
      orderInfo.amount_1     = {{transactionTotal}} - {{transactionShipping}};
      orderInfo.amount_2     = {{transactionTotal}} - {{transactionShipping}} - {{transactionTax}};
      orderInfo.amount_3     = {{transactionShipping}} + {{transactionTax}};
      s2m_shop.set_order_info( orderInfo );

      // Repeat itemInfo# where # increases per product
      var itemInfo1 = new Object();
  	  var  products = {{transactionProducts}}
  	  for (i=0; i<products.length; i++){
      itemInfo1.trans_id      = {{transactionId}};
      itemInfo1.item_id       = {{transactionProducts}}[i].sku;
      itemInfo1.item_info_1   = {{transactionProducts}}[i].name;
      itemInfo1.item_amount_1 = {{transactionProducts}}[i].price;
      itemInfo1.item_amount_2 = {{transactionProducts}}[i].price;
      itemInfo1.quantity      = {{transactionProducts}}[i].quantity;
      s2m_shop.add_item_info( itemInfo1 );}

      var userInfo = new Object();
      userInfo.user_email      = {{transactionEmail}};
      userInfo.customer_id     = {{userid}};
      s2m_shop.set_user_info( userInfo );
      s2m_shop.transact();
    }
    try{
      var __s2m_host = "demo.shop2market.com";
      var __s2m_js = document.createElement('script');
      __s2m_js.type = 'text/javascript'; __s2m_js.async = true;
      __s2m_js.src = (("https:" == document.location.protocol) ? "https://" : "http://") + __s2m_host + "/javascripts/s2m.js";
      __s2m_js.onload = _s2m_t;
      __s2m_js.onreadystatechange = function () {
        if (this.readyState == 'complete'|| this.readyState == 'loaded') _s2m_t();
      }
      var __s2m_script = document.getElementsByTagName('script')[0];
      __s2m_script.parentNode.insertBefore( __s2m_js, __s2m_script );
    }catch(err){}
  -->
</script>
```
where {{transactionId}}, {{transactionTotal}}, {{transactionProducts}} etc. are VARIABLES which you must create in GOOGLE TAG MANAGER taking date from Data Layer.

RESOURCES
--------------------------------
https://www.google.com/analytics/tag-manager/

https://spreecommerce.com/
