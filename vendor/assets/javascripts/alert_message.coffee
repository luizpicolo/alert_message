$ ->
  alerts = $('.alert-message')
  setTimeout (->
    alerts.fadeOut 400
    return
  ), 4000
  alerts.click ->
    alerts.fadeOut 400
    return
  return
