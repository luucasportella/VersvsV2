//Select Input
$(document).ready(function () {
    $('select').material_select();
});

//DatePicker
$(document).ready(function () {
    $('select').material_select();


    window.picker = $('.datepicker').pickadate({
        selectYears: 16, // Creates a dropdown of 15 years to control year
        format: 'yyyy-mm-dd'
    });
});

//Parallax
$(document).ready(function () {
    $('.parallax').parallax();
});

//Back to Top
$(document).ready(function () {
    $('#backToTop').click(function () {
        $('html, body').animate({scrollTop: 0}, 'slow');
        return false;

    });
});

//Messages
var myMessages = ['warning', 'error', 'success'];

function hideAllMessages()
{
    var messagesHeights = new Array(); // this array will store height for each

    for (i = 0; i < myMessages.length; i++)
    {
        messagesHeights[i] = $('.' + myMessages[i]).outerHeight(); // fill array
        $('.' + myMessages[i]).css('top', -messagesHeights[i]); //move element outside viewport	  
    }
}

function showMessage(type)
{
    $('.' + type + '-trigger').click(function () {
        hideAllMessages();
        $('.' + type).animate({top: "0"}, 500);
    });
}

$(document).ready(function () {

    // Initially, hide them all
    hideAllMessages();

    // Show message
    for (var i = 0; i < myMessages.length; i++)
    {
        showMessage(myMessages[i]);
    }

    // When message is clicked, hide it
    $('.my_msg').click(function () {
        $(this).animate({top: -$(this).outerHeight()}, 500);
    });

});  