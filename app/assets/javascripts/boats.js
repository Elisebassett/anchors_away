$(function () {
	$('.make_changes').hide();
	
	$('.edit').on('click', function(){
		var edit_form = $(this).closest('.edit_form');
		
		edit_form.find('.edit_field').attr('readonly', false)
		edit_form.find('.first_field').focus();
		$('.make_changes').show();
	});

	$('.make_changes').on('click', function(){
		$(this).closest('.edit_form').find('.edit_field').attr('readonly', true);
		$(this).hide();
	});




















});