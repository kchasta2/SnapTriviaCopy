$ ->
  loading = $('#loadbar').hide()
  $(document).ajaxStart(->
    loading.show()

  ).ajaxStop ->
    loading.hide()

  $('label.btn').on 'click', ->
    choice = $(this).find('input:radio').val()
    $('#loadbar').show()
    $('#quiz').fadeOut()
    setTimeout (->
      $('#answer').html $(this).checking(choice)
      $('#quiz').show()
      $('#loadbar').fadeOut()

      ### something else ###


    ), 1500

  $ans = 3

  $.fn.checking = (ck) ->
    if ck != $ans
      'INCORRECT'
    else
      'CORRECT'

