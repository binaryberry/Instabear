$(document).ready(function(){
	
	$('.paws-link').on('click', function(event){
	var pawCount = $(this).siblings('.paws_count')
		event.preventDefault();
		$.post(this.href, function(response){
			$(pawCount).text(response.new_paw_count);
		});


	});
});