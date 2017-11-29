$(document).on('turbolinks:load', function(){
	$('.job_make_changes').hide();
	$('.hide-job-field').hide();
	
	$('.job_edit').on('click', function(){
		var job_edit_form = $(this).closest('.job_edit_form');
		
		job_edit_form.find('.job_edit_field').attr('readonly', false);
		job_edit_form.find('.job_first_field').focus();
		$('.job_make_changes').show();
		$('.hide-job-field').show();
	});

	$('.job_make_changes').on('click', function(){
		$(this).closest('.job_edit_form').find('.job_edit_field').attr('readonly', true);
		$(this).hide();
		$('.hide-job-field').show();
	});

	$(document).on('ajax:success', ".delete_job", function(){
		$(this).closest('.job_info').remove();
	});

	$(document).ready(function() {
	  $('text_field').material_select();
	});

	// $('.description-field').val();

  $('.description-field').trigger('autoresize');
















});