$(document).ready(function(){
	console.log('sdasd')
	$(document).on "click", (event) ->
	 	console.log("clicked!");
		event.preventDefault();
		$("#submit-request").style.color = 'red';
 });
console.log('sdasd')