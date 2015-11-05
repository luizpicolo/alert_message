// alerts

$(function(){
  var alerts = $('.alert-message');

  setTimeout(function() {
    alerts.fadeOut(400);
  }, 4000);

  alerts.click(function() {
    alerts.fadeOut(400);
  });
})
