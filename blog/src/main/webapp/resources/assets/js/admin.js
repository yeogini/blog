   $(function() {
	  var xmlhttp = new XMLHttpRequest();
	  var test = document.getElementById("test");
	  console.log(test); 
	   $("#test").click(function(event){
		   event.preventDefault();
		  xmlhttp.onreadystatechange = xmlOnready();
		  xmlhttp.open("GET","/blog/test.do",true);
		  xmlhttp.send();
		 
	  }); 
	   $("#test2").click(function(envet) {
		   event.preventDefault();
		   xmlhttp.onreadystatechange = xmlOnready();
			  xmlhttp.open("GET","/blog/test.do",true);
			  xmlhttp.send();
	   })
	   function xmlOnready(){
		   if(xmlhttp.readyState==4 && xmlhttp.status==200) {
				console.log("#page-inner");
				document.getElementById("page-inner").innerHTML = xmlhttp.responseText;
			}  
	   } 
   }); 