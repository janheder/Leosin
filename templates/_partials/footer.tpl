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
{block name='hook_footer_before'}
  {hook h='displayFooterBefore'}
{/block}

<div class="container">
  <div class="row">
{block name='hook_footer'}
  {hook h='displayFooter'}
{/block}
</div>
</div>

{block name='hook_footer_after'}
  {hook h='displayFooterAfter'}
{/block}

<section class="copyright">
  <div class="container">
    {block name='copyright__link'}
      {l s='Copyright'} © {$smarty.now|date_format:"%Y"}
      <a href="{$urls.base_url}">{$shop.name}</a>
    {/block}
  </div>
</section>

<!-- Popper for Bootstrap support-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script>
  if(typeof(Popper) === 'undefined') {
  document.write('<script src="{$urls.js_url}popper.min.js">\x3C/script>')} 
</script>

<!-- Bootstrap core JavaScript-->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script>
  if(typeof($.fn.modal) === 'undefined') {
  document.write('<script src="{$urls.js_url}bootstrap.min.js">\x3C/script>')}
</script>

<!-- FontAwesome 5-->
<script src="https://use.fontawesome.com/releases/v5.0.6/js/all.js" integrity="sha384-0AJY8UERsBUKdWcyF3o2kisLKeIo6G4Tbd8Y6fbyw6qYmn4WBuqcvxokp8m2UzSD" crossorigin="anonymous"></script>
<script>
  if(typeof(FontAwesome) === 'undefined') {
  document.write('<script src="{$urls.js_url}fontawesome-all.min.js">\x3C/script>')}
</script>

<script src="{$urls.js_url}swiper.min.js"></script>

<script src="{$urls.js_url}lazyload.min.js"></script>

<script src="{$urls.js_url}scripts.min.js"></script>

<!-- <script src="{$urls.base_url}themes/Leosin/assets/js//custom.js"></script> -->


<script defer>
  var sliderSpeed = $("#hero_swiper").data("interval");
  var carousel_main = new Swiper('.o-hero__swiperContent', {
    lazy: true,
    autoplay: {
      delay: sliderSpeed,
    },
    spaceBetween: 0,
    grabCursor: true,
    zoom: false,
    loop: true,
    pagination: {
        el: '.o-hero__swiperPagination',
        clickable: true,
    },
    navigation: {
        nextEl: '.o-hero__swiperButton.-next',
        prevEl: 'o-hero__swiperButton.-prev',
    },
  });

</script>
