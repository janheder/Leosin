{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
*}


<!-- Bootstrap-->
<link href="{$urls.css_url}bootstrap-reboot.min.css" rel="stylesheet">
<link href="{$urls.css_url}bootstrap-grid.min.css" rel="stylesheet">

<!-- Main CSS-->
<link href="{$urls.css_url}swiper.min.css" rel="stylesheet">

<!-- Main CSS-->
<link href="{$urls.css_url}style.min.css" rel="stylesheet">

<!-- Custom CSS-->
<link href="{$urls.css_url}custom.css" rel="stylesheet">

<!-- jQuery-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="{$urls.js_url}jquery.min.js">\x3C/script>')</script>



  {foreach $stylesheets.inline as $stylesheet}
    <style>
      {$stylesheet.content}
    </style>
  {/foreach}

