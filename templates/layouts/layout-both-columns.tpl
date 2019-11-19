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
<!doctype html>
<html lang="{$language.locale}">

  <head>
    {block name='head'}
      {include file='_partials/head.tpl'}
    {/block}
  </head>

  <body class="{$page.page_name} {$page.body_classes|classnames}">

    <div id="js-backdrop"></div>

    {block name='hook_after_body_opening_tag'}
      {hook h='displayAfterBodyOpeningTag'}
    {/block}

    {block name='notifications'}
      {include file='_partials/notifications.tpl'}
    {/block}
    
    <header id="header">
      {block name='header'}
        {include file='_partials/header.tpl'}
      {/block}

      {block name='breadcrumb'}
        {include file='_partials/breadcrumb.tpl'}
      {/block}
    </header>



    <main id="main">
      <div class="mainContent transition-fade">

      {hook h="displayWrapperTop"}

      {block name='left_column'}
        <div class="container">
          <div class="categoryWrap">
            <aside class="sideFilter">
              {if $page.page_name == 'product'}
                {hook h='displayLeftColumnProduct'}
              {else}
                {hook h="displayLeftColumn"}
              {/if}
            </aside>
          {/block}

          {block name='right_column'}
            <div id="right-column">
              {if $page.page_name == 'product'}
                {hook h='displayRightColumnProduct'}
              {else}
                {hook h="displayRightColumn"}
              {/if}
            </div>
          {/block}

          {block name='content_wrapper'}
            <section class="productContent">
              {hook h="displayContentWrapperTop"}
              {block name='content'}
                <p>Hello world! This is HTML5 Boilerplate.</p>
              {/block}
              {hook h="displayContentWrapperBottom"}
            </section>
          </div>
        </div>
      {/block}

      {hook h="displayWrapperBottom"}
    
      </div>

    </main>

    <footer id="footer">
      {block name='footer'}
        {include file='_partials/footer.tpl'}
      {/block}
    </footer>

    {block name='javascript_bottom'}
      {include file="_partials/javascript.tpl" javascript=$javascript.bottom}
    {/block}

    {block name='hook_before_body_closing_tag'}
      {hook h='displayBeforeBodyClosingTag'}
    {/block}

    <script type="text/javascript" src="{$urls.base_url}themes/core.js" ></script>

    <script type="text/javascript" src="{$urls.js_url}jquery-ui.min.js" ></script>

    <script type="text/javascript" src="{$urls.theme_assets}../modules/ps_searchbar/ps_searchbar.js" ></script>
    <script type="text/javascript" src="{$urls.base_url}modules/ps_shoppingcart/ps_shoppingcart.js" ></script>

    <script type="text/javascript" src="{$urls.js_url}popper.min.js" ></script>
    <script type="text/javascript" src="{$urls.js_url}bootstrap.min.js" ></script>
    <script type="text/javascript" src="{$urls.js_url}swiper.min.js" ></script>
    <script type="text/javascript" src="{$urls.js_url}lazyload.min.js" ></script>
    <script type="text/javascript" src="{$urls.js_url}swup.min.js" ></script>

    <script type="text/javascript" src="{$urls.js_url}upup.min.js" ></script>
  <script>
    UpUp.start({
      'content-url': 'pwa/offline.html',
      'assets': ['pwa/logo.svg', 
                  'pwa/offline.css', 
                  'pwa/favicon.ico'],
      'service-worker-url': 'upup.sw.min.js'
    });
  </script>


    <script type="text/javascript" src="{$urls.js_url}theme.min.js"></script>
    <script type="text/javascript" src="{$urls.js_url}custom.js" ></script>

  </body>

</html>
