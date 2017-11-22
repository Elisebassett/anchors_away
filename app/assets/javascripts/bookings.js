$(document).on('turbolinks:load', function(){

	$(".booking_form").on('submit', function(){
		window.booking = $(this).closest('.job_info').find('.booking').attr('id');
	}); 

	$(".remove_booking").on('ajax:success', function(){
			$(this).closest('.booking').remove();
	});


});