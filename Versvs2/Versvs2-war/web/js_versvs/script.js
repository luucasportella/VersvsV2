//Select Input
$(document).ready(function() {
    $('select').material_select();
});

//DatePicker
$(document).ready(function() {
    $('select').material_select();


    window.picker = $('.datepicker').pickadate({

        selectYears: 16, // Creates a dropdown of 15 years to control year
        format: 'yyyy-mm-dd'
    });
});

//Parallax
$(document).ready(function(){
      $('.parallax').parallax();
    });
   