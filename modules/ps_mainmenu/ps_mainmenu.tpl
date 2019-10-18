{assign var=_counter value=0}

{function name="menu" nodes=[] depth=0 parent=null}


    {if $nodes|count}

          {foreach from=$nodes item=node}
            <div class="{if $depth == 0}navbarCategory__item{else}navbarCategory__subItem{/if}{if $node.current} --current{/if}" id="{$node.page_identifier}">
              {assign var=_counter value=$_counter+1}



              {if $node.children|count}

                <a class="navbarCategory__linkDesktop" href="{$node.url}" data-depth="{$depth}">{$node.label}</a>

                <div class="{if $depth == 0}navbarCategory__link{else}navbarCategory__subLink{/if} collapsed" data-depth="{$depth}" id="{$node.page_identifier}" data-toggle="collapse" data-target="#submenu_{$node.page_identifier}" aria-expanded="false" aria-controls="submenu_{$node.page_identifier}">
                  {$node.label}
                </div>


                <div {if $depth === 0} class="navbarCategory__collapse collapse" aria-labelledby="{$node.page_identifier}"{/if} id="submenu_{$node.page_identifier}" data-parent="#navbarCategoryAccordion">
                  <div class="container navbarCategory__subContainer">
                    <div class="navbarCategory__subMenu">
                      {menu nodes=$node.children depth=$node.depth parent=$node}
                    </div>
                  </div>
                </div>

              {else}

                <a class="{if $depth == 0}navbarCategory__link{else}navbarCategory__subLink{/if}" href="{$node.url}" data-depth="{$depth}">{$node.label}</a>

              {/if}


              
            </div>


          {/foreach}

    {/if}  


{/function}

{menu nodes=$menu.children}

