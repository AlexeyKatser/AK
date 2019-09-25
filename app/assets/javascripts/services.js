$(document).ready(function()
{
	$('.loop-button').click(function() {
		$('.card #request_service_id').val($(this).data('service-id'));
	});
});