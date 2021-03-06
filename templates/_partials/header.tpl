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
{block name='header_banner'}
  <div class="header-banner">
    {hook h='displayBanner'}
  </div>
{/block}
 

<nav class="navbarMain">
  <div class="container navbarMain__container">

    <div class="navToggle" id="js-navToggle">
      <img src="{$urls.img_url}icons/hamburger-white.svg" class="navToggle__img" alt="Menu">
    </div>

    {block name='header_logo'}
      <a class="navLogo" href="{$urls.base_url}" title="{$shop.name}">
        <img src="{$shop.logo}" class="navLogo__img" alt="{$shop.name}">
      </a>
    {/block}

    {block name='header_nav'}
        {hook h='displayNav'}
    {/block}
  </div>
</nav>


{block name='header_top'}
  <nav class="navbarCategory" id="js-navbarCategory">
        <div class="container navbarCategory__container">
        <div class="accordion navbarCategory__accordion" id="navbarCategoryAccordion">
          {hook h='displayTop'}
        </div>
      </div>
  </nav>

  {hook h='displayNavFullWidth'}

{/block}