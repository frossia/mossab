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
//= require fancybox
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

    var slider = $('.main-slider').bxSlider({
        adaptiveHeight: true,
        easing: 'ease',
        nextSelector: '#slider-next',
        prevSelector: '#slider-prev',
        pager: true,
        autoHover: true
    });

    $("a.group")
        .attr('rel', 'gallery')
        .fancybox({

            helpers: {
                thumbs: {
                    width  : 60,
                    height : 60,
                    source  : function(current) {
                        return $(current.element).data('thumbnail');
                    }
                }
            },

            openEffect	:	'elastic',
            closeEffect	:	'elastic',
            nextEffect  :  'elastic',
            loop        : false,
            nextSpeed		:	300,
            prevSpeed		:	300,
            'scrolling'        :   'visible',
            closeBtn		: false,
            mouseWheel : true,
            'overlayShow'	:	true
    });



});

(function($){
    $(function() {
        $( '#street' ).kladr({
            token: '53273edfdba5c76c3d000031',
            key: '0627c119f87fda00c84aed2eb5a8ac16a1d7de3d',
            type: $.kladr.type.building,
//            type: $.kladr.type.street,
//
            parentType: $.kladr.type.street
//            parentId: '7700000000000'
        });
    });
})(jQuery);

