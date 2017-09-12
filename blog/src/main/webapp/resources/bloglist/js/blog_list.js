
$(function() {
	/*$("#paging").on("click","a",function(event){
		event.preventDefault();
		console.log($(this).text());
		var test ={"page":$(this).text()};
		
		$.get('getBlogListAjax.do',test,function(data){
			
			console.dir(data);
		});
	});*/
	$(".a").click(function(event) {
		event.preventDefault();
		console.dir($(this).text());
	});
});