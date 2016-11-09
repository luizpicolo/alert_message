$ ->
  alerts = $('.alert-message')
  alerts.addClass('alert-message--visible')

  setTimeout (->
    alerts.removeClass('alert-message--visible')
    return
  ), 10000

  alerts.click ->
    alerts.removeClass('alert-message--visible')
    return
  return
