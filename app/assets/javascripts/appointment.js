$(document).ready(function() {
  // $('.delete-confirmation').hide()
  //   $('.delete-appointment').click(function(event){
  //     debugger
  //     $('.delete-appointment').hide()
  //     $('.delete-confirmation').show()
  //     $('.no-delete').click(function(event){
  //       $('.delete-appointment').show()
  //       $('.delete-confirmation').hide()
  //     })
  //   })

  $('.select-confirmation').hide()
    $('.select-application').click(function(event){
      $('.select-application').hide()
      $('.select-confirmation').show()
      $('.no-select').click(function(event){
        $('.select-application').show()
        $('.select-confirmation').hide()
      })
    })
});
