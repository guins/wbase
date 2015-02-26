(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({"./src/scripts/app/main.coffee":[function(require,module,exports){
var footer, header;

header = require('./components/header');

footer = require('./components/footer');

console.log('Init APP');

header.init();

footer.init();



},{"./components/footer":"/Users/Guins/Sites/github/wbase/src/scripts/app/components/footer.coffee","./components/header":"/Users/Guins/Sites/github/wbase/src/scripts/app/components/header.coffee"}],"/Users/Guins/Sites/github/wbase/src/scripts/app/components/footer.coffee":[function(require,module,exports){
module.exports = (function() {
  var _log, init;
  _log = function(message) {
    return console.log("[footer component]", message);
  };
  init = function() {
    _log('init');
    _log('init 2');
    return _log('init 3');
  };
  return {
    init: init
  };
})();



},{}],"/Users/Guins/Sites/github/wbase/src/scripts/app/components/header.coffee":[function(require,module,exports){
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

},{}]},{},["./src/scripts/app/main.coffee"])
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIm5vZGVfbW9kdWxlcy9icm93c2VyaWZ5L25vZGVfbW9kdWxlcy9icm93c2VyLXBhY2svX3ByZWx1ZGUuanMiLCIvVXNlcnMvR3VpbnMvU2l0ZXMvZ2l0aHViL3diYXNlL3NyYy9zY3JpcHRzL2FwcC9tYWluLmNvZmZlZSIsIi9Vc2Vycy9HdWlucy9TaXRlcy9naXRodWIvd2Jhc2Uvc3JjL3NjcmlwdHMvYXBwL2NvbXBvbmVudHMvZm9vdGVyLmNvZmZlZSIsIi9Vc2Vycy9HdWlucy9TaXRlcy9naXRodWIvd2Jhc2Uvc3JjL3NjcmlwdHMvYXBwL2NvbXBvbmVudHMvaGVhZGVyLmNvZmZlZSJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTtBQ0FBLElBQUEsY0FBQTs7QUFBQSxNQUFBLEdBQVMsT0FBQSxDQUFRLHFCQUFSLENBQVQsQ0FBQTs7QUFBQSxNQUNBLEdBQVMsT0FBQSxDQUFRLHFCQUFSLENBRFQsQ0FBQTs7QUFBQSxPQUdPLENBQUMsR0FBUixDQUFZLFVBQVosQ0FIQSxDQUFBOztBQUFBLE1BS00sQ0FBQyxJQUFQLENBQUEsQ0FMQSxDQUFBOztBQUFBLE1BTU0sQ0FBQyxJQUFQLENBQUEsQ0FOQSxDQUFBOzs7OztBQ0FBLE1BQU0sQ0FBQyxPQUFQLEdBQWlCLENBQUMsU0FBQSxHQUFBO0FBRWpCLE1BQUEsVUFBQTtBQUFBLEVBQUEsSUFBQSxHQUFPLFNBQUMsT0FBRCxHQUFBO1dBQ04sT0FBTyxDQUFDLEdBQVIsQ0FBWSxvQkFBWixFQUFrQyxPQUFsQyxFQURNO0VBQUEsQ0FBUCxDQUFBO0FBQUEsRUFHQSxJQUFBLEdBQU8sU0FBQSxHQUFBO0FBQ04sSUFBQSxJQUFBLENBQUssTUFBTCxDQUFBLENBQUE7QUFBQSxJQUNBLElBQUEsQ0FBSyxRQUFMLENBREEsQ0FBQTtXQUVBLElBQUEsQ0FBSyxRQUFMLEVBSE07RUFBQSxDQUhQLENBQUE7QUFRQSxTQUFPO0FBQUEsSUFDTixJQUFBLEVBQU0sSUFEQTtHQUFQLENBVmlCO0FBQUEsQ0FBRCxDQUFBLENBQUEsQ0FBakIsQ0FBQTs7Ozs7O0FDQUEsSUFBQSxDQUFBOztBQUFBLENBQUEsR0FBSSxPQUFBLENBQVEsUUFBUixDQUFKLENBQUE7O0FBQUEsTUFFTSxDQUFDLE9BQVAsR0FBaUIsQ0FBQyxTQUFBLEdBQUE7QUFFakIsTUFBQSxVQUFBO0FBQUEsRUFBQSxJQUFBLEdBQU8sU0FBQyxPQUFELEdBQUE7QUFDTixJQUFBLE9BQU8sQ0FBQyxHQUFSLENBQVksb0JBQVosRUFBa0MsT0FBbEMsQ0FBQSxDQUFBO1dBQ0EsT0FBTyxDQUFDLEdBQVIsQ0FBWSxNQUFaLEVBQW9CLENBQUEsQ0FBRSxNQUFGLENBQXBCLEVBRk07RUFBQSxDQUFQLENBQUE7QUFBQSxFQUlBLElBQUEsR0FBTyxTQUFBLEdBQUE7V0FDTixJQUFBLENBQUssTUFBTCxFQURNO0VBQUEsQ0FKUCxDQUFBO0FBUUEsU0FBTztBQUFBLElBQ04sSUFBQSxFQUFNLElBREE7R0FBUCxDQVZpQjtBQUFBLENBQUQsQ0FBQSxDQUFBLENBRmpCLENBQUEiLCJmaWxlIjoiZ2VuZXJhdGVkLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXNDb250ZW50IjpbIihmdW5jdGlvbiBlKHQsbixyKXtmdW5jdGlvbiBzKG8sdSl7aWYoIW5bb10pe2lmKCF0W29dKXt2YXIgYT10eXBlb2YgcmVxdWlyZT09XCJmdW5jdGlvblwiJiZyZXF1aXJlO2lmKCF1JiZhKXJldHVybiBhKG8sITApO2lmKGkpcmV0dXJuIGkobywhMCk7dmFyIGY9bmV3IEVycm9yKFwiQ2Fubm90IGZpbmQgbW9kdWxlICdcIitvK1wiJ1wiKTt0aHJvdyBmLmNvZGU9XCJNT0RVTEVfTk9UX0ZPVU5EXCIsZn12YXIgbD1uW29dPXtleHBvcnRzOnt9fTt0W29dWzBdLmNhbGwobC5leHBvcnRzLGZ1bmN0aW9uKGUpe3ZhciBuPXRbb11bMV1bZV07cmV0dXJuIHMobj9uOmUpfSxsLGwuZXhwb3J0cyxlLHQsbixyKX1yZXR1cm4gbltvXS5leHBvcnRzfXZhciBpPXR5cGVvZiByZXF1aXJlPT1cImZ1bmN0aW9uXCImJnJlcXVpcmU7Zm9yKHZhciBvPTA7bzxyLmxlbmd0aDtvKyspcyhyW29dKTtyZXR1cm4gc30pIiwiaGVhZGVyID0gcmVxdWlyZSAnLi9jb21wb25lbnRzL2hlYWRlcidcbmZvb3RlciA9IHJlcXVpcmUgJy4vY29tcG9uZW50cy9mb290ZXInXG5cdFxuY29uc29sZS5sb2cgJ0luaXQgQVBQJ1xuXG5oZWFkZXIuaW5pdCgpXG5mb290ZXIuaW5pdCgpIiwibW9kdWxlLmV4cG9ydHMgPSAoKCktPlxuXG5cdF9sb2cgPSAobWVzc2FnZSktPlxuXHRcdGNvbnNvbGUubG9nIFwiW2Zvb3RlciBjb21wb25lbnRdXCIsIG1lc3NhZ2VcblxuXHRpbml0ID0gLT5cblx0XHRfbG9nICdpbml0J1xuXHRcdF9sb2cgJ2luaXQgMidcblx0XHRfbG9nICdpbml0IDMnXG5cblx0cmV0dXJuIHtcblx0XHRpbml0OiBpbml0XG5cdH1cblxuKSgpIiwiJCA9IHJlcXVpcmUgJ2pxdWVyeSdcblxubW9kdWxlLmV4cG9ydHMgPSAoKCktPlxuXG5cdF9sb2cgPSAobWVzc2FnZSktPlxuXHRcdGNvbnNvbGUubG9nIFwiW2hlYWRlciBjb21wb25lbnRdXCIsIG1lc3NhZ2Vcblx0XHRjb25zb2xlLmxvZyAnYm9keScsICQoJ2JvZHknKVxuXG5cdGluaXQgPSAtPlxuXHRcdF9sb2cgJ2luaXQnXG5cblxuXHRyZXR1cm4ge1xuXHRcdGluaXQ6IGluaXRcblx0fVxuXG4pKCkiXX0=
