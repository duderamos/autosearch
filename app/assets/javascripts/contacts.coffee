ready = ->
  $('#_name').on 'input', ->
    contact = $('#_name').val()
    if contact.length > 3
      $.ajax
        url:      '/contacts.json?search=' + contact
        success:  (result) ->
            $('.searches').html result[0].name + " " + result[0].phone
    return
  return

$(document).ready ready
$(document).on 'page:load', ready
