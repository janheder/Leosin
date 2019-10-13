{block name='product_miniature_item'}
  <article class="itemProduct" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">

    <div class="itemProduct__inner">

      <div class="itemProduct__top">

        <a href="{$product.url}" class="itemProduct__thumbnail">
          {block name='product_thumbnail'}
            <div class="itemProduct__imgContainer">
              <div class="itemProduct__imgWrap">
                <picture>
                  <source srcset="" type="" alt="{$product.cover.legend}">
                  <img src="{$product.cover.medium.url}" data-src="{$product.cover.medium.url}" class="lazy itemProduct__img" alt="{$product.cover.legend}" data-full-size-image-url ="{$product.cover.large.url}">
                </picture>
                {block name='product_flags'}
                <div class="itemProduct__flags">
                  {foreach from=$product.flags item=flag}
                    <span class="itemProduct__flag {$flag.type}">{$flag.label}</span>
                  {/foreach}
                </div>
              {/block}
              </div>
            </div>
          {/block}

          {block name='product_name'}
            <h1 class="itemProduct__title" itemprop="name">{$product.name}</h1>
          {/block}
        </a>
        
      </div>




      <div class="itemProduct__bottom">

        {block name='product_description_short'}
          <div class="itemProduct__description" itemprop="description">{$product.description_short nofilter}</div>
        {/block}

        {block name='product_price_and_shipping'}
          {if $product.show_price}
            <div class="itemProduct__priceWrap">
              {if $product.has_discount}
                {hook h='displayProductPriceBlock' product=$product type="old_price"}

                <span class="itemProduct__priceOld">{$product.regular_price}</span>
                {if $product.discount_type === 'percentage'}
                  <span class="itemProduct__pricePercentage">{$product.discount_percentage}</span>
                {elseif $product.discount_type === 'amount'}
                  <span class="itemProduct__priceNumber">{$product.discount_amount_to_display}</span>
                {/if}
              {/if}

              {hook h='displayProductPriceBlock' product=$product type="before_price"}

              <span itemprop="price" class="itemProduct__price">{$product.price}</span>

              {hook h='displayProductPriceBlock' product=$product type="unit_price"}

              {hook h='displayProductPriceBlock' product=$product type="weight"}
            </div>
          {/if}
        {/block}

        {block name='product_list_actions'}
          <div class="itemProduct__cta">
            {if $product.add_to_cart_url}
                <a
                  class = "btn itemProduct__addToCart"
                  href  = "{$product.add_to_cart_url}"
                  rel   = "nofollow"
                  data-id-product="{$product.id_product}"
                  data-id-product-attribute="{$product.id_product_attribute}"
                  data-link-action="add-to-cart"
                >{l s='Add to cart' d='Shop.Theme.Actions'}</a>
            {/if}
            {hook h='displayProductListFunctionalButtons' product=$product}
          </div>
        {/block}

        {block name='product_quick_view'}
        {/block}

        {block name='product_variants'}
          {include file='catalog/_partials/variant-links.tpl' variants=$product.main_variants}
        {/block}





        {block name='product_availability'}
          {if $product.show_availability}
            {* availability may take the values "available" or "unavailable" *}
            <span class='product-availability {$product.availability}'>{$product.availability_message}</span>
          {/if}
        {/block}

        {hook h='displayProductListReviews' product=$product}

      </div>

    </div>
    
  </article>
{/block}
