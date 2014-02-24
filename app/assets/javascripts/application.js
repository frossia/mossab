// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .



function loadMore(pageNo) {
    var url = '/posts?page=';
    $.get(url + pageNo, function(response) {
        $("#posts").append(response);
    });
}

function displayTime() {
    var currentTime = new Date();
    var hours = currentTime.getHours();
    var minutes = currentTime.getMinutes();
    var seconds = currentTime.getSeconds();




    // If the hours digit is less than 10
    if(hours < 10) {
        // Add the "0" digit to the front
        // so 9 becomes "09"
        hours = "0" + hours;
    }
    // Format minutes and seconds the same way
    if(minutes < 10) {
        minutes = "0" + minutes;
    }
    if(seconds < 10) {
        seconds = "0" + seconds;
    }

    $('p span#hours').html(hours)
    $('p span#minutes').html(minutes)
    $('p span#seconds').html(seconds)
    $('p span.dot').toggleClass('hideen')

}

// This runs the displayTime function the first time
displayTime();

// This makes our clock 'tick' by repeatedly
// running the displayTime function every second.
setInterval(displayTime, 1000);

//window.setInterval(function(){
//  var d = new Date();
//  var timenow = d.toLocaleTimeString();
//  $('#time p#time').html(timenow);
//}, 1000);


$(document).ready(function(){

    var d = new Date();
    var timenow = d.toLocaleTimeString();
    $('#time p#time').html(timenow);

    $("#menubtn").click(function () {
        $("#menubtn").toggleClass('hightlight');
        $("#dropmenu").slideToggle("slow");
    });



    var currPage = 1;
    $("a.next").click(function() {
        $(this).button('loading');
        setTimeout(function () {
            loadMore(++currPage);
        });
    });



    $('.bxslider').bxSlider({
        adaptiveHeight: true,
        easing: 'ease',
        infiniteLoop: false,
        hideControlOnEnd: true,
        pager: false
    });
});

