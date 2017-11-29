$(document).on('turbolinks:load', function(){

	$(".booking_form").on('submit', function(){
		window.job_section = $(this).closest('.job_info').attr('id');
		$(this).closest('.booking-container').find('.booked-boats');
	}); 

	$(document).on('ajax:success', ".remove_booking", function(){
		$(this).closest('.booking').remove();
		window.job_section = $(this).closest('.job_info').attr('id');
	});


});