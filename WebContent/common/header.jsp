<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
	 <link rel="stylesheet" type="text/css" href="/ZHIHU/css/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bootstrap/css/bootstrap-theme.min.css">
<script
	src="${pageContext.request.contextPath}/bootstrap/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	
}

</style>
 <link rel="shortcut icon" href="../favicon.ico"> 

        

       <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600&subset=latin,latin-ext' rel='stylesheet'>

		<script type="text/javascript" src="/ZHIHU/js/js/modernizr.custom.79639.js"></script> 

		<noscript><link rel="stylesheet" type="text/css" href="/ZHIHU/css/css/noJS.css" /></noscript>

</head>
<script
	src="../bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript">



			function DropDown(el) {

				this.dd = el;

				this.initEvents();

			}

			DropDown.prototype = {

				initEvents : function() {

					var obj = this;



					obj.dd.on('click', function(event){

						$(this).toggleClass('active');

						event.stopPropagation();

					});	

				}

			}



			$(function() {



				var dd = new DropDown( $('#dd') );



				$(document).click(function() {

					// all dropdowns

					$('.wrapper-dropdown-5').removeClass('active');

				});



			});



		</script>
<body>


	<div id="header" style="width: 100%;position:fixed;z-index:1000;opacity:0.6">
		<nav class="navbar navbar-default"
			style="background-color:#139667;opacity:0.7">
		<div class="container-fluid" style="width: 1000px; margin: 0 auto;">
			<div class="navbar-header">
				<a class="navbar-brand" href="#"
					style="font-family: 微软雅黑; font-size: 25px; color: white">知乎mini</a>
			</div>
			<div class="collapse navbar-collapse">

				<ul class="nav navbar-nav navbar-left">

					<li><a href="${pageContext.request.contextPath }/first.jsp"
						style="font-family: 黑体; font-size: 17px; color: white">首页</a></li>
					<li><a href="${pageContext.request.contextPath }/TopicServlet?action=getAllType"
						style="font-family: 黑体; font-size: 17px; color: white">话题</a></li>


				</ul>
				<ul class="nav navbar-nav navbar-right">


					<c:if test="${User ne null }">
						<li><a data-toggle="modal" data-target="#myModal"
							style="font-family: 黑体; font-size: 12px; color: #fff;">提问</a></li>
					</c:if>

					<c:if test="${User eq null}">

						<li><a href="/ZHIHU/login.html"
							style="font-family: 黑体; font-size: 12px; color: #fff;">登录</a></li>
					</c:if>
					<c:if test="${User ne null }">
						<li><a href="/ZHIHU/pages/personIndex.jsp?id=${User.userId }"
							style="font-family: 黑体; font-size: 12px; color: #fff;">${User.userNiceName }</a></li>
						<li><a href="${pageContext.request.contextPath }/user/exit"
							style="font-family: 黑体; font-size: 12px; color: #fff;">退出</a></li>
					</c:if>

					<c:if test="${User.userState eq 1}">
						<li role="presentation" class="dropdown"><a

							class="dropdown-toggle" data-toggle="dropdown" href="#"
							role="button" aria-haspopup="true" aria-expanded="true"
							style="color: #fff; font-family: 黑体; font-size: 12px;"> 管理<span
								class="caret"></span>
						</a>
							<ul class="dropdown-menu" style="background-color: #139667;">
								<li id="userM"><a
									href="${pageContext.request.contextPath}/user/usermanage.jsp"
									style="color: #fff;">用户管理</a></li>
								<li class="topicM"><a
									href="${pageContext.request.contextPath}/topicmanage?action=getAllTopic&PageNow=1"
									style="color: #fff;">话题管理</a></li>

							</ul></li>
					</c:if>

				</ul>

			</div>
		</div>
		</nav>



	</div>
</body>
</html>