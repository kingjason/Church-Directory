var request = null;
var timeout = null;
$(document).ready(function(){
	$('#family_search').keydown(function(){
		timeout = window.clearTimeout(timeout);
		setTimeout(function() {
			if (request != null) request.abort();
			request = $.get( "/families/search/"+$('#family_search').val(), function( data ) {
				$( ".results" ).html( data );
			});
		}, 500);
	});
});