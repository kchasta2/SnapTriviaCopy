$(window).load ->
  $('#myModal').modal
    backdrop: 'static'
    keyboard: false
  return
$('label.btn').on 'click', ->
  $(this).parent('div.quiz').find('i').removeClass 'glyphicon-remove'
  $(this).find('i').addClass 'glyphicon-remove'
  $(this).parent('div.quiz').find('.btn-success').addClass('btn-default').removeClass 'btn-success'
  $(this).addClass 'btn-success'
  choice = $(this).find('input:radio').val()
  $('#answer').html $(this).checking(choice) + ' is checked!'
  return
$ans = 3

$.fn.checking = (ck) ->
  if ck != $ans
    'INCORRECT'
  else
    'CORRENT'