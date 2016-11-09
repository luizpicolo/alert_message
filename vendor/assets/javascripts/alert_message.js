// alerts

$(function(){
  var alerts = $('.alert-message');
  alerts.addClass('alert-message--visible');

  setTimeout(function() {
    alerts.removeClass('alert-message--visible');
  }, 10000);

  alerts.click(function() {
    alerts.removeClass('alert-message--visible');
  });
})
