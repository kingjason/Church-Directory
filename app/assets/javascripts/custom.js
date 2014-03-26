$(document).ready(function(){
	$('#family_search').keydown(function(){
		setTimeout(function() {
			$.get( "/families/search/"+$('#family_search').val(), function( data ) {
				$( ".results" ).html( data );
			});
		}, 50);
	});
});