=== Preorders for WooCommerce ===
Contributors: brightvesseldev, milardovich, niloybrightvessel
Requires at least: 5.0
Tags: preorder,pre order,pre-order,woocommerce preorder,for woocommerce
Tested up to: 5.5.1
Requires PHP: 7.0
Stable tag: 1.0.7
License: GPLv3
License URI: https://www.gnu.org/licenses/gpl-3.0.html

Ultimate Preorders Plugin for WooCommerce.

== Description ==

An efficient system that easily translates to the specific needs of store, our plugin allows you to follow up on pre-sales in a comprehensive way.

The wait for a new product (or the return of a popular one) is a great opportunity to gain new customers or engage older ones. However, too many companies misuse this unique time until customers lose interest. Engaging is critical in the days before a product release, which is why we’ve created a plugin that covers all bases. Give customers a chance to preorder so they’ll get their new item just as it becomes available, letting you monitor each step of the way.
Here’s what you can do with the Bright Plugins WooCommerce preorder Plugin:

* Manage all preorders through a specialized section on My Account.
* Set up a “preorder” status for both simple and variable products.
* Create an expiration date for preorder periods.
* Filter all orders that include products ordered during the “preorder” phase.
* Automatically turn products that are out of stock into preorders.
* Make products available automatically as soon as the preorder period ends.
* Prevent customers from adding preorder products when they have already-available items on their carts.
* Edit single product prices during the preorder period: fixed, percentage or markup on the base price.
* Apply “preorder” status to more than one product through a WordPress Bulk action grouped by tag or category.
* Enable the preorder option for a variable product, in the case that every variation was previously added to the preorder status.
* Notify website admins when products’ preorder periods are nearing their ends, emailing them a set amount of days before the date.
* Notify users when products’ preorder periods are over and they’ve become fully available.

**Our plugin supports 4 different business cases. Only case #4 is available in this free version. If you need any of the other cases, please [buy a pro license](https://brightplugins.com/woocommerc-preorder-plugin/).**

**Case #1 – Treat the whole order as a preorder**

If you choose this mode, the customer will be able to select a shipping date, and all products will be shipped together at that specific day.

That day will be limited to the latest preorder date available, for instance, if the order has 3 different products marked as preorder ones:

    Product A will be available on the 1st of September
    Product B will be available on the 3rd of September
    Product C will be available on the 1st of October

Then, the minimum shipping date will be the 1st of October (i.e: the minimum date when all products will be available).
Link to: Wordpress and WooCommerce Management

**Case #2 – Generate two separate orders, one for preorders and one for in-stock products**

If you choose this mode, the customer will get two different orders generated, one for preorder products and one for in-stock ones. For instance, if your order looks like this:

    Product A is in-stock
    Product B will be available on the 1st of September
    Product C is in-stock

Then you will get an order which will be processed now, with products A and C, and then another order which will be shipped on the 1st of September.
Link to: Wordpress and WooCommerce Management

**Case #3 – Generate separate orders for each preorder products**

If you choose this mode, then the customer will get one order for all in-stock products, and then one order for each preorder product which will be shipped in each specific preorder date.

**Case #4 – Allow only preorders**

Use this mode if you want to only allow your customers to either choose preorder products or available ones.

**Some other preorder features we offer:**

* Pick an optional date and time when the product will be available for purchase
* When products are available, admin can set to automatically charge
* Set and Change release dates for preorder products
* Email feature that allows admins to notify all customers who preordered a product
* If products are no longer available, current preorders can be canceled.
* Easily filter through all preorders with a custom order status
* Compatible with simple and variant products
* Optional feature to allow for an additional charge for preorders
* Customize the text on the add to cart buttons for preorders

== Installation ==

= Minimum Requirements =

* PHP 7.2 or greater is recommended
* MySQL 5.6 or greater is recommended

= Automatic installation =

Automatic installation is the easiest option -- WordPress will handles the file transfer, and you won’t need to leave your web browser. To do an automatic install of WooCommerce, log in to your WordPress dashboard, navigate to the Plugins menu, and click “Add New.”
 
In the search field type “WooCommerce Pre Orders,” then click “Search Plugins.” Once you’ve found us,  you can view details about it such as the point release, rating, and description. Most importantly of course, you can install it by! Click “Install Now,” and WordPress will take it from there.

= Manual installation =

Manual installation method requires downloading the WooCommerce Pre Orders plugin and uploading it to your web server via your favorite FTP application. The WordPress codex contains [instructions on how to do this here](https://wordpress.org/support/article/managing-plugins/#manual-plugin-installation).

= Updating =

Automatic updates should work smoothly, but we still recommend you back up your site.

== Frequently Asked Questions ==

= Is detailed documentation available? =
Yes, you can find the documents by [this link](https://share.brightvessel.com/MVy/).

= Is the extension compatible with my theme? =
This plugin works on the backend, so it will not affect your theme in most cases.

= Do you plan on adding to the plugin? =
We do take feature requests [here](https://share.brightvessel.com/MAb).

== Changelog ==
= 1.0.8 =
* Fixed Wrong preorder notice appear on checkout page

= 1.0.7 =
* Added language catalog files
* Added Settings link into plugin action.
* Fixed Auto complete order issue

= 1.0.6 =
* Small fixes, wording change

= 1.0.5 =
* Fixed duplicated order bugs
* Fixed mixed cart bug
* Added proper customer notifications

= 1.0.4 = 
* Fixed empty order bug

= 1.0.3 =
* Fixed wrong days issue in the cart page
* Fixed CSS conflicts with jQuery UI's calendar

= 1.0.2 =
* Fixed texts
* Fixed critical error on cart

= 1.0.1 = 
* Fixed checkout bug with shipping hook