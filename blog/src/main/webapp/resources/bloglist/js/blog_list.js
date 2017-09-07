
$(function() {
	$("#paging").on("click","a",function(event){
		event.preventDefault();
		console.log($(this).text());
		$.get('getBlogListAjax.do',$(this).text(),function(){
			
		});
	});
	$(".a").click(function(event) {
		event.preventDefault();
		console.dir($(this).text());
	});
});