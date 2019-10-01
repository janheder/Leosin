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
{block name='login_form'}

  {block name='login_form_errors'}
    {include file='_partials/form-errors.tpl' errors=$errors['']}
  {/block}

  <form class="loginForm" id="loginForm" action=" {block name='login_form_actionurl'}{$action}{/block}" method="post">

    <header class="loginForm__header">
        <h1 class="loginForm__title">{l s='Log in to your account' d='Shop.Theme.Customeraccount'}</h1>
        <span class="loginForm__subtitle"><a href="{$urls.pages.register}" data-link-action="display-register-form">{l s='No account? Create one here' d='Shop.Theme.Customeraccount'}</a></span>
    </header>

    <section class="loginForm__fields">
      {block name='form_fields'}
        {foreach from=$formFields item="field"}
          {block name='form_field'}
            {form_field field=$field}
          {/block}
        {/foreach}
      {/block}

      <span class="loginForm__lostPassword">
        <a href="{$urls.pages.password}" rel="nofollow">
          {l s='Forgot your password?' d='Shop.Theme.Customeraccount'}
        </a>
      </span>
    </section>

    {block name='login_form_footer'}
      <section class="loginForm__footer">
        <input type="hidden" name="submitLogin" value="1">
        {block name='form_buttons'}
          <button class="btn loginForm__btn" data-link-action="sign-in" type="submit">{l s='Sign in' d='Shop.Theme.Actions'}</button>
        {/block}
      </section>
    {/block}

  </form>
{/block}
