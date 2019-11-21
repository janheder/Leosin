{block name='product_miniature_item'}
  <article class="productItem transition-slideup" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">

    <div class="productItem__inner">

      <div class="productItem__top">

        <a href="{$product.url}" class="productItem__thumbnail" data-swup-preload>
          {block name='product_thumbnail'}
            <div class="productItem__imgContainer">
              <div class="productItem__imgWrap">
                <picture>
                  {*<source srcset="{$product.cover.medium.url}.webp" type="image/webp" alt="{$product.cover.legend}">*}
                  <img src="" data-src="{$product.cover.medium.url}" class="lazy productItem__img" alt="{$product.cover.legend}" data-full-size-image-url ="{$product.cover.large.url}">
                  <span class="lazy productItem__preloader"></span>
                </picture>
                {block name='product_flags'}
                <div class="productItem__flags">
                  {foreach from=$product.flags item=flag}
                    <span class="productItem__flag --{$flag.type}">{$flag.label}</span>
                  {/foreach}
                </div>
              {/block}
              </div>
            </div>
          {/block}

          {block name='product_name'}
            <h1 class="productItem__title" itemprop="name">{$product.name}</h1>
          {/block}
        </a>
        
      </div>




      <div class="productItem__bottom">

        {block name='product_description_short'}
          <div class="productItem__description" itemprop="description">{$product.description_short nofilter}</div>
        {/block}

        {block name='product_price_and_shipping'}
          {if $product.show_price}
            <div class="productItem__priceWrap">
              {if $product.has_discount}
                {hook h='displayProductPriceBlock' product=$product type="old_price"}

                <span class="productItem__priceOld">{$product.regular_price}</span>
                {if $product.discount_type === 'percentage'}
                  <span class="productItem__pricePercentage">{$product.discount_percentage}</span>
                {elseif $product.discount_type === 'amount'}
                  <span class="productItem__priceNumber">{$product.discount_amount_to_display}</span>
                {/if}
              {/if}

              {hook h='displayProductPriceBlock' product=$product type="before_price"}

              <span itemprop="price" class="productItem__price">{$product.price}</span>

              {hook h='displayProductPriceBlock' product=$product type="unit_price"}

              {hook h='displayProductPriceBlock' product=$product type="weight"}
            </div>
          {/if}
        {/block}

        {block name='product_list_actions'}
          <div class="productItem__cta">
            {if $product.add_to_cart_url}
                <a
                  class = "btn productItem__addToCart"
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
