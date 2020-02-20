/* ========================================================================== */
/* MAIN THEME SCRIPTS */

/* DO NOT EDIT DIRECTLY, USE custom.js file in assets folder */

/* AUTHOR: Jan Heder | @janheder | janheder.cz */
/* MADE FOR: prestashop 1.7.x in 2018 */
/* LICENSE: MIT */
/* ========================================================================== */

// =============================================================================
// SWUP
// =============================================================================

const swup = new Swup({
    plugins: [new SwupHeadPlugin(), new SwupBodyClassPlugin(), new SwupPreloadPlugin(), new SwupScriptsPlugin()],
    containers: ["#header", "#main", "#footer"]
});

// =============================================================================
// LAZY LOAD
// =============================================================================

function lazy() {
    if(document.querySelector('.lazy') != null) {

        var myLazyLoad = new LazyLoad({
            elements_selector: ".lazy"
        });
        
    }
}

lazy();
document.addEventListener('swup:contentReplaced', lazy);

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
// HERO SLIDER
// =============================================================================

function hero() {
    if(document.querySelector('#hero_swiper') != null) {

        var sliderSpeed = $("#hero_swiper").data("interval");
        var carousel_main = new Swiper('.hero__swiperContent', {
            lazy: true,
            autoplay: {
                delay: sliderSpeed,
            },
            spaceBetween: 0,
            grabCursor: true,
            zoom: false,
            loop: true,
            pagination: {
                el: '.hero__swiperPagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.hero__swiperButton.-next',
                prevEl: 'hero__swiperButton.-prev',
            },
        });

    }
}

hero();
document.addEventListener('swup:contentReplaced', hero);

// =============================================================================
// NAVIGATION 
// =============================================================================

function nav() {
    if(document.querySelector('#js-navToggle') != null) {

        $("#js-navToggle, #js-backdrop").click(function(){
            $("#js-navToggle, #js-navbarCategory").toggleClass("--active");
            $("body").toggleClass("--navOpen");
        });
    }
}

nav();
document.addEventListener('swup:contentReplaced', nav);

// =============================================================================
// scroll to top after swup
// =============================================================================

function scroll() {
    if(document.querySelector('body') != null) {

        $("html, body").animate({ scrollTop: 0 }, "fast");
    }
}

document.addEventListener('swup:contentReplaced', scroll);