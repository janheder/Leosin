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
<!-- Block search module TOP -->
<div class="navSearch" id="js-navSearch" data-search-controller-url="{$search_controller_url}">
	<form class="navSearch__form" method="get" action="{$search_controller_url}">
		<div class="navSearch__formGroup">
			<input type="hidden" name="controller" value="search">
			<input type="text" name="search" class="navSearch__input" id="js-navSearch__input" value="{$search_string}" placeholder="{l s='Search our catalog' d='Shop.Theme.Catalog'}" aria-label="{l s='Search' d='Shop.Theme.Catalog'}">
			<button type="submit" class="btn navSearch__btn" aria-label="{l s='Search' d='Shop.Theme.Catalog'}">
				<img src="{$urls.img_url}icons/search.svg" class="navSearch__icon" alt="{l s='Search' d='Shop.Theme.Catalog'}">
				<span class="navSearch__btnTitle">{l s='Search' d='Shop.Theme.Catalog'}</span>
			</button>
		</div>
	</form>
</div>
<div class="navSearchToggle" id="js-navSearchToggle">
	<img src="{$urls.img_url}icons/search-white.svg" class="navSearchToggle__icon">
</div>
<!-- /Block search module TOP -->
