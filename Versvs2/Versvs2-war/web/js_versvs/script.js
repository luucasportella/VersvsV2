/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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