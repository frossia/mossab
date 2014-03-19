#= require jquery
#= require active_admin/base
#= require ckeditor/ckeditor
#= require best_in_place

$(document).ready ->

  # Activating Best In Place
  jQuery(".best_in_place").best_in_place()
  return