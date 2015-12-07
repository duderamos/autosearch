ready = ->
  $('#_name').on 'input', ->
    contact = $('#_name').val()
    if contact.length > 3
      $.ajax
        url:      '/contacts.json?search=' + contact
        success:  (result) ->
            $('#_phone').val(result[0].phone)
    return
  return

$(document).ready ready
$(document).on 'page:load', ready
