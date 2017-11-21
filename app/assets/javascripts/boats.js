




$(document).on('turbolinks:load', function(){
	
	$('.boat_make_changes').hide();
	
	$('.boat_edit').on('click', function(){
		var boat_edit_form = $(this).closest('.boat_edit_form');
		boat_edit_form.find('.boat_edit_field').attr('readonly', false)
		boat_edit_form.find('.boat_first_field').focus();
		$('.boat_make_changes').show();
	});

	$('.boat_make_changes').on('click', function(){
		$(this).closest('.boat_edit_form').find('.boat_edit_field').attr('readonly', true);
		$(this).hide();
	});

	$(".delete_boat").on('ajax:success', function(){
		$(this).closest('.boat_info').remove();
	});


















});