=== PW WooCommerce Gift Cards ===
Contributors: pimwick
Donate link: https://paypal.me/pimwick
Tags: woocommerce, gift cards, gift certificates, pimwick
Requires at least: 4.5
Tested up to: 5.5
Requires PHP: 5.6
Stable tag: 1.148
License: GPLv2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html

Sell gift cards to your WooCommerce store, in just a few minutes!

== Description ==

**Your WooCommerce store should offer gift cards!**

Gift Cards are convenient and increase sales organically. the WooCommerce Gift Cards plugin makes it easy to sell gift cards to your store. So easy to get started, you can be selling gift cards for your WooCommerce store in 5 minutes!

**Purchasing** Similar to Amazon.com gift cards, the customer can specify the amount, recipient, and message when purchasing.

**Receiving** WooCommerce email template system for beautiful emails. Click the link directly in the email to add the gift card to the cart automatically!

**Redeeming** Integrates into your theme to make redeeming a gift card easy for the customer. Applies the balance after tax, just like cash. New balance shown on the cart and checkout pages.

**Guest Checkout** Gift cards are not tied to a specific account so guests can receive gift cards without having to create an account.

**Compatible with WooCommerce Pre-Orders** If you use the WooCommerce Pre-Orders plugin from WooCommerce.com.

**Setup is easy!** One-click creation of the Gift Card product. Easily customized to suit your needs.

**Gift Card Admin** See your gift card liability at a glance. View details about individual cards.


> **<a href="https://www.pimwick.com/gift-cards/">PW WooCommerce Gift Cards Pro</a> lets you do more:**
>
> * **Set Custom Amounts** - Allow customers to specify the amount. You can set a minimum and a maximum amount.
> * **Schedule delivery** - Optionally allow customers to schedule when a gift card will be delivered.
> * **Specify a Default Amount** - Choose an amount that will be pre-selected when purchasing a gift card.
> * **Customer-facing Balance Page** - A shortcode to let customers check their gift card balances.
> * **Adding funds to existing gift card** - Customers can add funds to existing gift cards from the Check Balance page.
> * **Expiration Dates** - Automatically set an expiration date based on the purchase date.
> * **Balance Adjustments** - Perform balance adjustments in the admin area.
> * **Sell Physical Gift Cards** - Import existing gift card numbers and balances.
> * **Manually Generate Gift Cards** - Specify the amount and quantity for the cards to create multiple cards in one step.
> * **REST API** - Adheres to the WordPress and WooCommerce REST API standards.

Compatible with WooCommerce 3.0 and higher.

Available in the following languages:
* Danish
* Dutch
* English
* Finnish
* French
* German
* Italian
* Portuguese
* Romanian
* Russian
* Spanish
* Swedish

The following currency switcher plugins are supported:
* Aelia Currency Switcher
* WooCommerce Currency Switcher by realmag777
* WPML WooCommerce Multi-currency by OnTheGoSystems
* Multi Currency for WooCommerce by VillaTheme
* WooCommerce Ultimate Multi Currency Suite by Dev49.net (requires a patch, contact us for details)
* Polylang + Hyyan WooCommerce Polylang Integration

== Installation ==

1. Upload the plugin files to the `/wp-content/plugins/pw-gift-cards` directory, or install the plugin through the WordPress plugins screen directly.
2. Activate the plugin through the 'Plugins' screen in WordPress.
3. Navigate to Pimwick Plugins -> PW Gift Cards

== Screenshots ==

1. Similar to Amazon.com gift cards, the customer can specify the amount, recipient, and message when purchasing.
2. WooCommerce email template system for beautiful emails. Click the link directly in the email to add the gift card to the cart automatically!
3. Use the email designer to customize your gift card.
4. Integrates into your theme to make redeeming a gift card easy for the customer. Applies the balance after tax, just like cash. New balance shown on the cart and checkout pages.
5. One-click creation of the Gift Card product. Easily customized to suit your needs.
6. See your gift card liability at a glance. View details about individual cards.

== Changelog ==

= 1.148 =
* Fixes a compatibility issue with the WooCommerce Availability Scheduler plugin by vanquish

= 1.147 =
* Confirmed compatibility with WooCommerce v4.6

= 1.146 =
* Fixed an issue with an untranslated string.

= 1.145 =
* Verified compatibility with WooCommerce 4.5. Updated readme.txt to include REST API feature found in the Pro version.

= 1.144 =
* Fixes a potential error: Call to a member function get_regular_price() on boolean

= 1.143 =
* Added the Romanian (ro_RO) translation. Added the Portuguese (pt_PT) translation. Fixes a potential issue with order totals not being recalculated correctly resulting in an error with some payment gateways.

= 1.142 =
* Fixed issue when using a gift card number that contains a backslash.

= 1.141 =
* Improved French translation. Fixed an issue viewing details of a gift card number that contains a backslash.

= 1.140 =
* A few more fixes for compatibility with WOOCS - WooCommerce Currency Switcher plugin by realmag777. Removed the need for the PWGC_WOOCS_PATCH flag. Fixed an issue with PayPal payments where Tax might be calculated again at PayPal.

= 1.139 =
* Added a wp-config flag (PWGC_WOOCS_PATCH) that can be enabled to fix an issue with the amount displayed in the gift card email on certain systems when used in conjunction with the WOOCS - WooCommerce Currency Switcher plugin by realmag777.

= Previous versions =
* See changelog.txt

== Upgrade Notice ==

= 1.148 =
* Fixes a compatibility issue with the WooCommerce Availability Scheduler plugin by vanquish


