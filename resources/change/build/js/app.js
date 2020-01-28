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





window.onload=function(){
        if ($(document).width()<768) {



            var he=$(".b-close").height()+$(".g-menu").height();
            he=he+33;
            console.log(he+"px");
            $("body").append('<style>.avatar:after{height: ' + he + 'px;}</style>');
            $(".g-menu .main-menu.menu-generated .depth-0 .fa.fa-angle-down").first().click();

            $(".g-menu .depth-0 .children-menu.menu-dropdown").first().css("max-height", $(".g-menu").height()+"px");
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
                    } else{
                        window.location.href=$(this).find("a").first().attr("href");
                        console.log("No existe")
                    }
                }
            });


    }