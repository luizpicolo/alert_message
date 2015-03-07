// alerts

$(document).ready(function(){
  var alerts = $('.alert-message');

  setTimeout(function(){
    alerts.fadeOut(400);
  }, 3000);

  alerts.on('click', function(){
      alerts.fadeOut(400);
  });
})
