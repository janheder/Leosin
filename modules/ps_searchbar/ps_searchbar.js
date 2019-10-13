/* global $ */
$(document).ready(function () {
    var $searchWidget = $('#js-navSearch');
    var $searchBox    = $searchWidget.find('#js-navSearch__input');
    var searchURL     = $searchWidget.attr('data-search-controller-url');

    $.widget('prestashop.psBlockSearchAutocomplete', $.ui.autocomplete, {
        _renderItem: function (ul, product) {
            return $("<li>")
                .append($("<a>")
                    .append($("<span>").html(product.image).addClass("category"))
                    .append($("<span>").html(' > ').addClass("separator"))
                    .append($("<span>").html(product.name).addClass("product"))
                ).appendTo(ul)
            ;
        }
    });

    $searchBox.psBlockSearchAutocomplete({
        source: function (query, response) {
            $.post(searchURL, {
                s: query.term,
                resultsPerPage: 10
            }, null, 'json')
            .then(function (resp) {
                response(resp.products);
            })
            .fail(response);
        },
        select: function (event, ui) {
            var url = ui.item.url;
            window.location.href = url;
        },
    });
});
