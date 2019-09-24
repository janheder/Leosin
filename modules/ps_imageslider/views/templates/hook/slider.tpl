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

{if $homeslider.slides}

  <section class="o-hero">
    <div class="container o-hero__container">
      <div class="o-hero__swiper" id="hero_swiper" data-interval="{$homeslider.speed}">
        <div class="o-hero__swiperContent">
          <div class="swiper-wrapper o-hero__swiperWrapper">

            {foreach from=$homeslider.slides item=slide name='homeslider'}
              {assign var="counter" value=$counter + 1}
              <div class="swiper-slide o-hero__slide" data-slide={$counter}>
                <a href="{$slide.url}" class="o-hero__slideLink">
                  <figure class="o-hero__slideFigure">
                    <img data-src="{$slide.image_url}" class="swiper-lazy o-hero__slideImg" alt="{$slide.legend|escape}" >
                    <div class="swiper-lazy-preloader o-hero__slidePreloader -light"></div>
                    {if $slide.title || $slide.description}
                      <figcaption class="o-hero__slideCaption">
                        <h2 class="o-hero__slideTitle">{$slide.title}</h2>
                        <div class="o-hero__slideDescription">{$slide.description nofilter}</div>
                      </figcaption>
                    {/if}
                  </figure>
                </a>
              </div>
            {/foreach}

          </div>

            <div class="swiper-pagination swiper-pagination-white swiper-pagination-clickable swiper-pagination-bullets o-hero__swiperPagination">
 

        </div>
      </div>
    </div>
  </section>

{/if}


