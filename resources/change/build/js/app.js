(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["/build/js/app"],[
/* 0 */
/*!*****************************************************!*\
  !*** multi ./build/js/app.js ./build/scss/app.scss ***!
  \*****************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

!(function webpackMissingModule() { var e = new Error("Cannot find module 'C:\\laragon\\www\\pickout\\build\\js\\app.js'"); e.code = 'MODULE_NOT_FOUND'; throw e; }());
!(function webpackMissingModule() { var e = new Error("Cannot find module 'C:\\laragon\\www\\pickout\\build\\scss\\app.scss'"); e.code = 'MODULE_NOT_FOUND'; throw e; }());


/***/ })
],[[0,"/build/js/manifest"]]]);


import tippy, {animateFill}  from 'tippy.js';
import 'tippy.js/dist/tippy.css';
import 'tippy.js/dist/backdrop.css';
import 'tippy.js/animations/shift-away.css';

tippy('.cuadro-trip-div', {
  content (reference){
    return $(reference).find(".info-tooltip-trip span").text();
  },
  animateFill: true,
  plugins: [animateFill]
});

if ($(document).width()<768) {
  tippy('.caja-contact-aloja', {
    content (reference){
      return $(reference).find(".contact-info-aloja-especi").text();
    },
    theme: "white-tippy",
    interactive: true,
    animateFill: true,
    plugins: [animateFill]
  });
}

window.MostrarCamposSearch=function() {
  $(".input-search-mit").show(300);
}


window.onload=function(){


  


$(document).scroll(function () {

    if ($(document).width()>1200) {
      if ($(document).scrollTop() > 700) {
        $(".container-contact-sticky").addClass("container-contact-sticky-fixed");
      } else {
        $(".container-contact-sticky").removeClass("container-contact-sticky-fixed");
      }
    }

    if ($(document).width()<768) {
      if ($(document).scrollTop() > 200) {
        $(".container-contact-sticky").addClass("container-contact-sticky-fixed");
      } else {
        $(".container-contact-sticky").removeClass("container-contact-sticky-fixed");
      }
    }

  });


    jQuery.fn.single_double_click = function(single_click_callback, double_click_callback, timeout) {
      return this.each(function(){
        var clicks = 0, self = this;
        jQuery(this).click(function(event){
          clicks++;
          if (clicks == 1) {
            setTimeout(function(){
              if(clicks == 1) {
                single_click_callback.call(self, event);
              } else {
                double_click_callback.call(self, event);
              }
              clicks = 0;
            }, timeout || 300);
          }
        });
      });
    }

        $(".modern_carousel .div-redirect").click(function(e){
            window.location.href = $(this).parent().find("a").attr("href");
        });

        $(".modern_carousel_aloja .div-redirect").click(function(e){
            window.location.href = $(this).parent().parent().find("a").attr("href");
        });

        $(".modern_carousel_gastro_parent .div-redirect").click(function(e){
            window.location.href = $(this).parent().find("a").attr("href");
        });

        $(".owl-carousel-modern .div-redirect").click(function(e){
            window.location.href = $(this).parent().parent().find("a").attr("href");
        });

        $(".modern_carousel .thumb-image a").click(function(e){
            if ($(document).width()<768) {
                e.preventDefault();
            }
        }); 


        if ($(document).width()<768) {



            var he=$(".b-close").height()+$(".g-menu").height();
            he=he+33;
            $("body").append('<style>.avatar:after{height: ' + he + 'px;}</style>');
            $(".g-menu .main-menu.menu-generated .depth-0 .fa.fa-angle-down").first().click();

            $(".g-menu .depth-0 .children-menu.menu-dropdown").first().css("max-height", $(".g-menu").height()-8+"px");
            $(".g-menu .depth-0 .children-menu.menu-dropdown").first().css("overflow", "auto");

            $(".g-menu .depth-2 i").click(function(e){
            if($(this).parent().parent().find("ul").is(":visible")){
                        $(this).parent().parent().find("ul").hide();
                    } else{
                        $(this).parent().parent().find("ul").show();
                    }
            });

        }
        $(".g-menu .depth-0").click(function(e){   
                if ($(document).width()<768) {
                    if($(this).find(".children-menu.menu-dropdown").first().length){
                        $(".g-menu .depth-0").each(function(key, b) {
                            $(b).removeClass("active");
                        });
                        $(this).addClass("active");

                        $(".modern_carousel .thumb-image a").click(function(e){
                            //e.preventDefault();
                            alert();
                        });

                    } else{

                        $(".modern_carousel .item-tour").click(function(){
                            window.location.href = $(".modern_carousel .item-title a").attr("href");
                        });

                        window.location.href=$(this).find("a").first().attr("href");
                    }
                }
            });

        $(".bravo_topbar").attr("itemscope", "");
        $(".bravo_topbar").attr("itemtype", "http://schema.org/Organization");
        $(".bravo-logo").attr("itemprop", "url")
        $(".bravo_topbar .topbar-left").attr("itemprop", "name")
        $(".bravo-logo img").attr("itemprop", "logo")
        $(".topbar-right .socials .fa.fa-facebook").parent().attr("itemprop", "sameAs");




        $(".cuadro-trip-div")
          .mouseenter(function() {
            window.elemento=this;
            window.url_location=$( this ).attr("data-url");
            console.log(window.url_location)
            setTimeout(function(){
                $(window.elemento).attr('onclick', 'window.location.href = "'+window.url_location+'";')
            }, 10);
          })
          .mouseleave(function() {
            $( window.elemento ).attr('onclick', '');
          });

}