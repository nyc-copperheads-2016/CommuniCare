$(document).ready(function() {

    $('#calendar').fullCalendar({

        // put your options and callbacks here
    })
    $('.fc-day-number').click(function(){
   window.location.href='appointments/new.html';
})
});