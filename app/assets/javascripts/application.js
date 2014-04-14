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




$(function() {
    var data = [
        {  label:  "1-й Варшавский пр-зд, д.1А",  category:  1},
        {  label:  "Каширское ш., д.24",  category:  1},
        {  label:  "Каширское ш., д.26 (к.1,2,3)",  category:  1},
        {  label:  "Каширское ш., д.28 (к.1,2,3)",  category:  1},
        {  label:  "Каширское ш., д.32 (к.1,2,3)",  category:  1},
        {  label:  "Каширское ш., д.34",  category:  1},
        {  label:  "Каширское ш., д.34а",  category:  1},
        {  label:  "Каширское ш., д.36",  category:  1},
        {  label:  "Каширское ш., д.38",  category:  1},
        {  label:  "Каширское ш., д.40",  category:  1},
        {  label:  "Каширское ш., д.44 (к.1, 2,3)",  category:  1},
        {  label:  "Каширское ш., д.46 (к.1, 2, 3)",  category:  1},
        {  label:  "Каширское ш., д.48 (к.1, 2, 3)",  category:  1},
        {  label:  "Каширское ш., д.50 (к.1, 2, 2а,3)",  category:  1},
        {  label:  "Пролетарский пр-кт, д.1",  category:  1},
        {  label:  "Пролетарский пр-кт, д.2",  category:  1},
        {  label:  "Пролетарский пр-кт, д.3",  category:  1},
        {  label:  "Пролетарский пр-кт, д.4",  category:  1},
        {  label:  "Пролетарский пр-кт, д.6(к.1,2)",  category:  1},
        {  label:  "Пролетарский пр-кт, д.8(к.1)",  category:  1},
        {  label:  "Пролетарский пр-кт, д.12/25",  category:  1},
        {  label:  "Пролетарский пр-кт, д.13",  category:  1},
        {  label:  "Москворечье ул., д.2(к. 1,2)",  category:  1},
        {  label:  "Москворечье ул., д.4 (к. 3,5)",  category:  1},
        {  label:  "Москворечье ул., д.7 (к.1-8)",  category:  1},
        {  label:  "Москворечье ул., д.9 (к.1,2)",  category:  1},
        {  label:  "Москворечье ул., д.11,13,17",  category:  1},
        {  label:  "Москворечье ул., д.19 (к.1,2,3,4)",  category:  1},
        {  label:  "Москворечье ул., д.29 (к.1, 2)",  category:  1},
        {  label:  "Москворечье ул., д.31 (к.1)",  category:  1},
        {  label:  "Москворечье ул., д.33",  category:  1},
        {  label:  "Москворечье ул., д.35 (к.1, 2, 3)",  category:  1},
        {  label:  "Москворечье ул., д.37 (к.1,2)",  category:  1},
        {  label:  "Москворечье ул., д.41 (к.1, 2)",  category:  1},
        {  label:  "Москворечье ул., д.43",  category:  1},
        {  label:  "Москворечье ул., д.45 (к.1,2)",  category:  1},
        {  label:  "Москворечье ул., д.47 (к.1,2)",  category:  1},
        {  label:  "Москворечье ул., д.49",  category:  1},
        {  label:  "Пролетарский пр-кт, д.17 (к.1)",  category:  2},
        {  label:  "Пролетарский пр-кт, д.19 (к.2,3)",  category:  2},
        {  label:  "Пролетарский пр-кт, д.21 (к.2)",  category:  2},
        {  label:  "Кантемировская ул., д.14 (к.2)",  category:  2},
        {  label:  "Кантемировская ул., д.16 (к.2)",  category:  2},
        {  label:  "Кантемировская ул., д.18 (к.2,3,3а,5)",  category:  2},
        {  label:  "Кантемировская ул., д.20 (к.4,5)",  category:  2},
        {  label:  "Кантемировская ул., д.22 (к.2)",  category:  2},
        {  label:  "Кошкина ул., д.12 (к.1,2,3)",  category:  2},
        {  label:  "Москворечье ул. д.16",  category:  2},
        {  label:  "Москворечье ул. д.20",  category:  2},
        {  label:  "Пролетарский пр-кт, д.21/24",  category:  3},
        {  label:  "Кантемировская ул., д.4 (к.1)",  category:  3},
        {  label:  "Кантемировская ул., д.8 (к.1)",  category:  3},
        {  label:  "Кантемировская ул., д.12 (к.1,2)",  category:  3},
        {  label:  "Кантемировская ул., д.16 (к. 1,1а)",  category:  3},
        {  label:  "Кантемировская ул., д.20 (к. 1,2)",  category:  3},
        {  label:  "Кантемировская ул., д.22 (к. 1,3)",  category:  3},
        {  label:  "Каширское ш., д.78 (к.4)",  category:  3},
        {  label:  "ул. Кошкина, д.13 (к.1)",  category:  3},
        {  label:  "ул. Кошкина, д.17 (к.1)",  category:  3},
        {  label:  "ул. Кошкина, д.19 (к.1)",  category:  3},
        {  label:  "Каширское ш., д.51 (к.2,5)",  category:  4},
        {  label:  "Каширское ш., д.53 (к.1,3)",  category:  4},
        {  label:  "Каширское ш., д.54 (к.1,2,2а)",  category:  4},
        {  label:  "Каширское ш., д.55 (к.2)",  category:  4},
        {  label:  "Каширское ш., д.56 (к.1,2)",  category:  4},
        {  label:  "Каширское ш., д.58 (к.1, 2)",  category:  4},
        {  label:  "Каширское ш., д.60 (к.1, 2)",  category:  4},
        {  label:  "Каширское ш., д.62/2",  category:  4},
        {  label:  "Каширское ш., д.66 (к.1)",  category:  4},
        {  label:  "Каширское ш., д.68 (к.1)",  category:  4},
        {  label:  "Каширское ш., д.70 (к.1)",  category:  4},
        {  label:  "Каширское ш., д.72 (к.1)",  category:  4},
        {  label:  "Каширское ш., д.78 (к.2,3)",  category:  4},
        {  label:  "Кошкина ул., д.4",  category:  4},
        {  label:  "Кошкина ул., д.7",  category:  4},
        {  label:  "Кошкина ул., д.9",  category:  4},
        {  label:  "Кошкина ул., д.11 (к.1,2)",  category:  4},
        {  label:  "Москворечье ул., д.51 (к.1, 2)",  category:  4},
        {  label:  "Москворечье ул., д.55 (к.1, 2)",  category:  4},
        {  label:  "Москворечье ул., д.57/8",  category:  4},
        {  label:  "Кантемировская ул., д.4 (к.3)",  category:  4},
        {  label:  "Каширское ш., д.53 (к.5)",  category:  5},
        {  label:  "Каширское ш., д.55 (к. 1, 3,5,6)",  category:  5},
        {  label:  "Каширское ш., д.57 (к. 2,3,7)",  category:  5},
        {  label:  "Каширское ш., д.59 (к. 1,2)",  category:  5},
        {  label:  "Борисовские пруды ул., д.3(к.1,2,3)",  category:  5},
        {  label:  "Борисовские пруды ул., д.7 (к.3)",  category:  5},
        {  label:  "Борисовские пруды ул., д.9 (к.1,2,3)",  category:  5},
        {  label:  "Борисовские пруды ул., д.13 (к.1,2)",  category:  5},
        {  label:  "Борисовские пруды ул., д.15 (к.1,2)",  category:  5},
        {  label:  "Борисовские пруды ул., д.17 (к.1)",  category:  5},
        {  label:  "Борисовские пруды ул., д.21 (к.1,2)",  category:  5},
        {  label:  "Борисовские пруды ул., д.23 (к.1,2)",  category:  5},
        {  label:  "Борисовские пруды ул., д.25 (к.1,2)",  category:  5}
    ];
    $( "#deputaty" ).autocomplete({
        source: data,
        select: function(event, ui) {
            $(".cat").addClass('hidden');
            $("#category"+ui.item.category).toggleClass('hidden');
            $("#email_category").val(ui.item.category);
            $("#mail_form").removeClass('hidden')
        }
    });
});




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






    $('.ad').owlCarousel({
        singleItem: true,
        mouseDrag: false,
        autoHeight: true,
        paginationNumbers: true
    });

    $('#newspapers').owlCarousel({
        singleItem: true,
        mouseDrag: false,
        autoHeight: true,
        transitionStyle: 'backSlide'
    });

    $('#banners').owlCarousel({
        items: 6,
        autoPlay: 3000,
        stopOnHover: true,
        mouseDrag: false
    });

//    $('#yearsTab a').click(function (e) {
//        e.preventDefault()
//        $(this).tab('show')
//    });



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


