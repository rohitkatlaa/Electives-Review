// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

window.onload=function(){
$(".course_des").hide();
$(".course_content").hide();
$(".text_and_ref").hide();
$(".syllabus").hide();
$(".notes").hide();
$(".assignments").hide();
$(".projects").hide();
}
function my_hide(){
	$(".basic").hide();
	$(".course_des").hide();
	$(".course_content").hide();
	$(".text_and_ref").hide();
	$(".syllabus").hide();
	$(".notes").hide();
	$(".assignments").hide();
	$(".projects").hide();
}
function basic(){
	my_hide();
	$(".basic").show();
}
function course_des(){
        my_hide();
        $(".course_des").show();
}
function course_content(){
        my_hide();
        $(".course_content").show();
}
function text_and_ref(){
        my_hide();
        $(".text_and_ref").show();
}
function syllabus(){
        my_hide();
        $(".syllabus").show();
}
function notes(){
        my_hide();
        $(".notes").show();
}
function assignments(){
        my_hide();
        $(".assignments").show();
}
function projects(){
        my_hide();
        $(".projects").show();
}

