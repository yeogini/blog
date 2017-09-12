<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>프로필 관리</title>
    <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
	<!-- BOOTSTRAP STYLES-->
    <link href="resources/assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="resources/assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="resources/assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
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
    <script src="resources/assets/js/jquery-3.2.1.min.js"></script>
   <script src="resources/assets/js/jquery-3.2.1.min.js"></script>
     <!-- JQUERY SCRIPTS -->
    <script src="resources/assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="resources/assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="resources/assets/js/jquery.metisMenu.js"></script>
    <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
   <script>  
   $(function() {
	  var xmlhttp = new XMLHttpRequest();

	   $("#main-menu").on('click','a',function(event){
		  event.preventDefault();
		  var menu =  $(this).attr("id");
		  var url;
		  if(menu == "profile") {
			  console.log("a");
			  url = "/blog/adminProfile.do";
		  } else if(menu == "category") {
			  url ="/blog/test.do";
		  } else if (menu =="layout") {
			  url ="/blog/getBlogLayout.do";
		  } else if(menu == "friend") {
			  url ="/blog/test.do";
		  } else if(menu == "blacklist") {
			  url ="/blog/test.do";
		  }
		  xmlhttp.onreadystatechange = xmlOnready;
		  xmlhttp.open("GET",url,true);
		  xmlhttp.send();
		 //$.get("/blog/adminProfile.do",xmlOnready());
	  });  
	/*   $("#profile").click(function(envet) {
		   event.preventDefault();
		   xmlhttp.onreadystatechange = xmlOnready();
			  xmlhttp.open("GET","/blog/adminProfile.do",true);
			  xmlhttp.send();
	   });  */
	   function xmlOnready(){
		   if(xmlhttp.readyState==4) {
			   console.log("bbb");
			   if(xmlhttp.status==200) {
				   console.log("#page-inner");
					document.getElementById("page-inner").innerHTML = xmlhttp.responseText;  
			   }
			}  else {
				console.log("aaa");
			}
	   }
	   
	   //레이아웃
	   $( "#profile" ).draggable({ scroll: true});
    $( "#visitors" ).draggable({ scroll: true, scrollSensitivity: 100 });
    $( "#category" ).draggable({ scroll: true, scrollSpeed: 100 });
    $( "#reply" ).draggable({ scroll: true, scrollSpeed: 100 });
    $( "#latest_posts" ).draggable({ scroll: true, scrollSpeed: 100 });
    $( "#top" ).draggable({ scroll: true, scrollSpeed: 100 });
    $( "#title" ).draggable({ scroll: true, scrollSpeed: 100 });
 

	$("#save").click(function(){
		console.log("클릭");
		 
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
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">블로그 관리</a> 
            </div> 
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> 
		<a href="blog.do" class="btn btn-info square-btn-adjust">블로그 목록가기</a>
		<a href="logout.do" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="./resources/images/adminlogo.jpg" class="user-image img-responsive"/>
					</li>
					<li>환영합니다</li>
                    <li>
                        <a href="index.html" id="profile"><i class="fa fa-user fa-3x"></i> 프로필</a>
                    </li>
                     <li>
                        <a  href="ui.html" id="category"><i class="fa fa-bars fa-3x"></i> 카테고리</a>
                    </li>
                    <li>
                        <a  href="tab-panel.html" id="layout"><i class="fa fa-th fa-3x"></i> 레이아웃</a>
                    </li> 
						   <li>
                        <a   href="chart.html" id="friend"><i class="fa fa-users fa-3x"></i> 친구 관리</a>
                    </li>	
                      <li> 
                        <a  href="table.html" id="blacklist"><i class="fa fa-list fa-3x"></i> 블랙 리스트</a>
                    </li>
                </ul>
            </div>
        </nav>  
        <!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner"></div>
		</div>
</div>
   
</body>
</html>
