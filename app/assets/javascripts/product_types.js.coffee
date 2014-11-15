# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'click', '.add_fields', (e)->
  e.preventDefault()
  time = new Date().getTime()
  regxp = new RegExp($(this).data('id'), 'g')
  $(this).before($(this).data('fields').replace(regxp, time))

$(document) .on 'click', '.remove_fields', (e)->
  e.preventDefault()
  $(this).closest('fieldset').hide()
  $(this).before('.form-group').find('input[type=hidden]').val('1')