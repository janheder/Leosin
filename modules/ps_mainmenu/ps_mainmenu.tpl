{assign var=_counter value=0}

{function name="menu" nodes=[] depth=0 parent=null}
      <div class="container navbarCategory__container">
        <div class="collapse navbar-collapse navbarCategory__collapse">

    {if $nodes|count}

          {foreach from=$nodes item=node}
              <div class="{$node.type}{if $node.current} current{/if} nav-item navbar-category__nav-item" id="{$node.page_identifier}">
              {assign var=_counter value=$_counter+1}
                <a
                  class="{if $depth >= 0}nav-link a-navbarCategory__item{/if}{if $depth === 1} dropdown-submenu{/if}{if $node.children|count} dropdown-item{/if}"
                  href="{$node.url}" data-depth="{$depth}"
                  {if $node.children|count} id="{$node.page_identifier}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"{/if}
                  {if $node.open_in_new_window} target="_blank" {/if}
                >
                  {if $node.children|count}
                    {* Cannot use page identifier as we can have the same page several times *}
                    {assign var=_expand_id value=10|mt_rand:100000}
                    <span class="icon-caret down"></span>
                  {/if}
                  {$node.label}
                </a>
                {if $node.children|count}
                <div {if $depth === 0} class="dropdown-menu nav-item__dropdown-menu" aria-labelledby="{$node.page_identifier}"{else} class="collapse"{/if} id="top_sub_menu_{$_expand_id}">
                  {menu nodes=$node.children depth=$node.depth parent=$node}
                </div>
                {/if}
              </div>
          {/foreach}

    {/if}  
            </div>
      </div>

{/function}

{menu nodes=$menu.children}

