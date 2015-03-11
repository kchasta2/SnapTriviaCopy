$ ->
  loading = $('#loadbar').hide()
  $(document).ajaxStart(->
    loading.show()
    return
  ).ajaxStop ->
    loading.hide()
    return
  $('label.btn').on 'click', ->
    choice = $(this).find('input:radio').val()
    $('#loadbar').show()
    $('#quiz').fadeOut()
    setTimeout (->
      $('#answer').html $(this).checking(choice)
      $('#quiz').show()
      $('#loadbar').fadeOut()

      ### something else ###

      return
    ), 1500
    return
  $ans = 3

  $.fn.checking = (ck) ->
    if ck != $ans
      'INCORRECT'
    else
      'CORRECT'

  return