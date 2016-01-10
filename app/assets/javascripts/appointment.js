$(document).ready(function() {
  $('.confirmation').hide()
    $('.delete-appointment').click(function(event){
      $('.delete-appointment').hide()
      $('.confirmation').show()
      $('.no-delete').click(function(event){
        $('.delete-appointment').show()
        $('.confirmation').hide()
      })
    })
});
