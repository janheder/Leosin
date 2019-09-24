{block name='product_miniature_item'}
  <article class="m-itemProduct" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}" itemscope itemtype="http://schema.org/Product">

    <div class="m-itemProduct__inner">

      <div class="m-itemProduct__top">

        <a href="{$product.url}" class="m-itemProduct__thumbnail">
          {block name='product_thumbnail'}
            <div class="m-itemProduct__imgContainer">
              <div class="m-itemProduct__imgWrap">
                <img src="{$product.cover.medium.url}" data-src="{$product.cover.medium.url}" class="lazy m-itemProduct__img" alt="{$product.cover.legend}" data-full-size-image-url ="{$product.cover.large.url}">
                {if $product.discount_type === 'percentage'}
                  <span class="a-itemProduct__tag -sale">{$product.discount_percentage}</span>
                {/if}
              </div>
            </div>
          {/block}

          {block name='product_name'}
            <h1 class="m-itemProduct__title" itemprop="name">{$product.name}</h1>
          {/block}
        </a>
        
      </div>




      <div class="m-itemProduct__bottom">

        {block name='product_description_short'}
          <div class="m-itemProduct__description" itemprop="description">{$product.description_short nofilter}</div>
        {/block}

        {block name='product_price_and_shipping'}
          {if $product.show_price}
            <div class="m-itemProduct__priceWrap">
              {if $product.has_discount}
                {hook h='displayProductPriceBlock' product=$product type="old_price"}

                <span class="m-itemProduct__priceOld">{$product.regular_price}</span>
                {if $product.discount_type === 'percentage'}
                  <span class="m-itemProduct__pricePercentage">{$product.discount_percentage}</span>
                {elseif $product.discount_type === 'amount'}
                  <span class="m-itemProduct__priceNumber">{$product.discount_amount_to_display}</span>
                {/if}
              {/if}

              {hook h='displayProductPriceBlock' product=$product type="before_price"}

              <span itemprop="price" class="m-itemProduct__price">{$product.price}</span>

              {hook h='displayProductPriceBlock' product=$product type="unit_price"}

              {hook h='displayProductPriceBlock' product=$product type="weight"}
            </div>
          {/if}
        {/block}

        {block name='product_list_actions'}
          <div class="m-itemProduct__cta">
            {if $product.add_to_cart_url}
                <a
                  class = "btn m-itemProduct__addToCart"
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



        {block name='product_flags'}
          <ul class="product-flags">
            {foreach from=$product.flags item=flag}
              <li class="{$flag.type}">{$flag.label}</li>
            {/foreach}
          </ul>
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
