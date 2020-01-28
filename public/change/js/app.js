/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 0);
/******/ })
/************************************************************************/
/******/ ({

/***/ "./resources/change/build/js/app.js":
/*!******************************************!*\
  !*** ./resources/change/build/js/app.js ***!
  \******************************************/
/*! no static exports found */
/***/ (function(module, exports) {

(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["/build/js/app"], [
/* 0 */

/*!*****************************************************!*\
  !*** multi ./build/js/app.js ./build/scss/app.scss ***!
  \*****************************************************/

/*! no static exports found */

/***/
function (module, exports, __webpack_require__) {
  !function webpackMissingModule() {
    var e = new Error("Cannot find module 'C:\\laragon\\www\\pickout\\build\\js\\app.js'");
    e.code = 'MODULE_NOT_FOUND';
    throw e;
  }();
  !function webpackMissingModule() {
    var e = new Error("Cannot find module 'C:\\laragon\\www\\pickout\\build\\scss\\app.scss'");
    e.code = 'MODULE_NOT_FOUND';
    throw e;
  }();
  /***/
}], [[0, "/build/js/manifest"]]]);

window.onload = function () {
  if ($(document).width() < 768) {
    var he = $(".b-close").height() + $(".g-menu").height();
    he = he + 33;
    console.log(he + "px");
    $("body").append('<style>.avatar:after{height: ' + he + 'px;}</style>');
    $(".g-menu .main-menu.menu-generated .depth-0 .fa.fa-angle-down").first().click();
    $(".g-menu .depth-0 .children-menu.menu-dropdown").first().css("max-height", $(".g-menu").height() + "px");
    $(".g-menu .depth-0 .children-menu.menu-dropdown").first().css("overflow", "auto");
    $(".g-menu .depth-2 i").click(function (e) {
      if ($(this).parent().parent().find("ul").is(":visible")) {
        $(this).parent().parent().find("ul").hide();
      } else {
        $(this).parent().parent().find("ul").show();
      }
    });
  }

  $(".g-menu .depth-0").click(function (e) {
    if ($(document).width() < 768) {
      if ($(this).find(".children-menu.menu-dropdown").first().length) {
        $(".g-menu .depth-0").each(function (key, b) {
          $(b).removeClass("active");
        });
        $(this).addClass("active");
      } else {
        window.location.href = $(this).find("a").first().attr("href");
        console.log("No existe");
      }
    }
  });
};

/***/ }),

/***/ "./resources/change/build/scss/app.scss":
/*!**********************************************!*\
  !*** ./resources/change/build/scss/app.scss ***!
  \**********************************************/
/*! no static exports found */
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ }),

/***/ 0:
/*!***************************************************************************************!*\
  !*** multi ./resources/change/build/js/app.js ./resources/change/build/scss/app.scss ***!
  \***************************************************************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(/*! C:\laragon\www\pickout\resources\change\build\js\app.js */"./resources/change/build/js/app.js");
module.exports = __webpack_require__(/*! C:\laragon\www\pickout\resources\change\build\scss\app.scss */"./resources/change/build/scss/app.scss");


/***/ })

/******/ });