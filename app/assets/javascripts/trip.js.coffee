# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('select#trips_new').change (event) ->
    select_wrapper = $('#trips_state_code_wrapper')

    $('select', select_wrapper).attr('disabled', true)

    place = $(this).val()

    url = "/subregion_options?parent_region=#{place}"
    select_wrapper.load(url)

  $('select#locale').change (event) ->
    $(@).closest('form').submit()
