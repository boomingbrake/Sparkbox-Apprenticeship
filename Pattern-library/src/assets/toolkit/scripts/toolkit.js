/**
 * Toolkit JavaScript
 */

'use strict';
var $ = require('jQuery');

$(document).ready(function() {
  $("#tabTop").click(function() {
    if ($(this).hasClass("is-opened")) {
      $(this).addClass("is-closed").removeClass("is-opened")
      $("#tabElementTop").addClass("is-closed").removeClass("is-opened")
    } else {
      $(this).removeClass("is-closed").addClass("is-opened")
      $("#tabElementTop").removeClass("is-closed").addClass("is-opened")
    }
  });
  $("#tabRight").click(function() {
    if ($(this).hasClass("is-opened")) {
      $(this).addClass("is-closed").removeClass("is-opened")
        $("#tabElementRight").addClass("is-closed").removeClass("is-opened")
    } else {
      $(this).removeClass("is-closed").addClass("is-opened")
      $("#tabElementRight").removeClass("is-closed").addClass("is-opened")
    }
  });

});
