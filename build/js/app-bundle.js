(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);throw new Error("Cannot find module '"+o+"'")}var f=n[o]={exports:{}};t[o][0].call(f.exports,function(e){var n=t[o][1][e];return s(n?n:e)},f,f.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
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



},{}],2:[function(require,module,exports){
module.exports = (function() {
  var _log, init;
  _log = function(message) {
    return console.log("[header component]", message);
  };
  init = function() {
    return _log('init');
  };
  return {
    init: init
  };
})();



},{}],3:[function(require,module,exports){
var footer, header;

header = require('./components/header.coffee');

footer = require('./components/footer.coffee');

console.log('Init APP');

header.init();

footer.init();



},{"./components/footer.coffee":1,"./components/header.coffee":2}]},{},[3])