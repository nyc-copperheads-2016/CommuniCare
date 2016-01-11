$(document).ready(function() {
  $(".additional-patient-info").hide()
  $('.patient').click(function(event){
    $(".additional-patient-info").toggle();
  })
})
