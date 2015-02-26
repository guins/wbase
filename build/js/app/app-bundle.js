(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
var footer, header;

header = require('./components/header');

footer = require('./components/footer');

console.log('Init APP');

header.init();

footer.init();



},{"./components/footer":2,"./components/header":3}],2:[function(require,module,exports){
module.exports = (function() {
  var _log, init;
  _log = function(message) {
    return console.log("[footer component]", message);
  };
  init = function() {
    return _log('init');
  };
  return {
    init: init
  };
})();



},{}],3:[function(require,module,exports){
(function (global){
var $;

$ = (typeof window !== "undefined" ? window.$ : typeof global !== "undefined" ? global.$ : null);

module.exports = (function() {
  var _log, init;
  _log = function(message) {
    console.log("[header component]", message);
    return console.log('body', $('body'));
  };
  init = function() {
    return _log('init');
  };
  return {
    init: init
  };
})();



}).call(this,typeof global !== "undefined" ? global : typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
},{}]},{},[1]);
