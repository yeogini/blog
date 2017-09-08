<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
<link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
<script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
 <!-- <script src="https://code.jquery.com/jquery-1.10.2.js"></script> -->


<style>
  #profile{ width: 100px; height: 100px; padding: 0.5em; 
/*  <c:if test="${not empty profile}">
 	top:()
 
 </c:if> */
   }
  #category{ width: 100px; height: 100px; padding: 0.5em;  }
#visitors{ width: 100px; height: 100px; padding: 0.5em;  }
#reply{ width: 100px; height: 100px; padding: 0.5em;  }
#latest_posts{ width: 100px; height: 100px; padding: 0.5em;  }
#top{ width: 100px; height: 100px; padding: 0.5em;  }
#title{ width: 100px; height: 100px; padding: 0.5em;  }

  	
</style>

<title>Insert title here</title>




 

<script>
  $(function() {
	 /*  var p = $( "p" );
	  var position = p.position();
 	  */
 	 
    $( "#profile" ).draggable({ scroll: true});
    $( "#visitors" ).draggable({ scroll: true, scrollSensitivity: 100 });
    $( "#category" ).draggable({ scroll: true, scrollSpeed: 100 });
    $( "#reply" ).draggable({ scroll: true, scrollSpeed: 100 });
    $( "#latest_posts" ).draggable({ scroll: true, scrollSpeed: 100 });
    $( "#top" ).draggable({ scroll: true, scrollSpeed: 100 });
    $( "#title" ).draggable({ scroll: true, scrollSpeed: 100 });
 

	$("#save").click(function(){
	
		
		$(".layoutdiv").each(function(){
			console.log($(this).position());
			var id = $(this).attr("id")
			var position = $(this).position() 
			$("#t_"+id).val(position.left+","+position.top);
		});
		$("#blog_form").submit();
	})
  });

  
  
 </script>

  
  
  
</head>
<body>
<%-- ${layoutVO}<br>
방명록${layout.visitors}<br>
프로필${layout.profile}<br>
카테고리${layout.category}<br>
리플${layout.reply}<br>
최신글${layout.latest_posts}<br>
베스트글${layout.top}<br>
타이틀${layout.title}<br>
 --%>



<div id="profile" class="layoutdiv ui-widget-content">
  <p>프로필</p>
</div>

<div id="visitors" class="layoutdiv ui-widget-content">
  <p>방명록</p>
</div>

<div id="category" class="layoutdiv ui-widget-content">
  <p>카테고리</p>
</div>

<div id="reply" class="layoutdiv ui-widget-content">
  <p>리플</p>
</div>

<div id="latest_posts" class="layoutdiv ui-widget-content">
  <p>최신글</p>
</div>

<div id="top" class="layoutdiv ui-widget-content">
  <p>베스트글</p>
</div>


<div id="title" class="layoutdiv ui-widget-content">
  <p>타이틀</p>
</div>

<form id="blog_form" action="layoutInsert.do" method="post">
<input name="profile" id= "t_profile" type="hidden">
<input name="visitors" id= "t_visitors" type="hidden">
<input name="category"  id= "t_category" type="hidden">
<input name="reply"  id= "t_reply" type="hidden">
<input name="latest_posts"  id= "t_latest_posts" type="hidden">
<input name="top"  id= "t_top" type="hidden">
<input name="title" id= "t_title" type="hidden">
<input type="hidden" name="mode" value="upd">
<input id="save" type="button" value="저장">
</form>
 
 
 
 
 
</body>
</html>