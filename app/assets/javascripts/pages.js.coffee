# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#$(document).ready ->
#  $("input").kladr


$ ->
  $("#ajax").click ->
    $.ajax({
#      type: "GET",
      url: "/pages/do_backup"
#      data: { product: { name: "Filip", description: "whatever" } },
#      success:(data) ->
#        alert data.id
#        return false
#      error:(data) ->
#        return false
    })