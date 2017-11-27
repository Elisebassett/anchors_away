$(document).on('turbolinks:load', function(){
	$('.job_make_changes').hide();
	
	$('.job_edit').on('click', function(){
		var job_edit_form = $(this).closest('.job_edit_form');
		
		job_edit_form.find('.job_edit_field').attr('readonly', false)
		job_edit_form.find('.job_first_field').focus();
		$('.job_make_changes').show();
	});

	$('.job_make_changes').on('click', function(){
		$(this).closest('.job_edit_form').find('.job_edit_field').attr('readonly', true);
		$(this).hide();
	});

	$(".delete_job").on('ajax:success', function(){
		$(this).closest('.job_info').remove();
	});

	$(document).ready(function() {
	  $('text_field').material_select();
	});

	$('.description-field').val();

  $('.description-field').trigger('autoresize');
















});