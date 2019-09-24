/* ========================================================================== */
/* MAIN THEME SCRIPTS */

/* DO NOT EDIT DIRECTLY, USE custom.js file in assets folder */

/* AUTHOR: Jan Heder | @janheder | janheder.cz */
/* MADE FOR: prestashop 1.7.x in 2018 */
/* LICENSE: MIT */
/* ========================================================================== */

// =============================================================================
// OBJECT FIT FALLBACK
// =============================================================================

var styletotest = "object-fit";
if (styletotest in document.body.style){
    /*alert("The " + styletotest + " property is supported");*/
}
else {
    $('.post__image-container').each(function () {
        var $container = $(this),
        imgUrl = $container.find('img').attr('src');
        if (imgUrl) {
            $(this).css('backgroundImage', 'url(' + imgUrl + ')');
            $('.post__featured-image').css('display','none');
            $(this).css('background-size','cover');
        }  
    });
}

// =============================================================================
// LAZY LOAD
// =============================================================================

var myLazyLoad = new LazyLoad({
    elements_selector: ".lazy"
});