<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="../js/jquery.js"></script>
<link rel="icon" href="/ZHIHU/images/logo.png" type="image/x-icon"/>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${requestScope.Topic.topicTitle}话题详情页-知乎</title>
</head><script src="/ZHIHU/js/jquery.js"></script>
     <script type="text/javascript">

     function deletep(data){
     	
     	var b = data.replace(/<.*?>/ig,"");
     	return b;
     }
     
     function checkValue(){
         var title=document.getElementById("topicTitle").value;
         if(title==''){
             alert('标题不能为空');
             return false;
         }
         return true;
     }

      function checkComment(){
		var commentContent=document.getElementById("commentContent").value;
		if(commentContent==''){
			alert("评论内容不能为空！");
			return false;
		}
		return true;
	} 
      
      function checkComment2(){
  		var commentContent=document.getElementById("commentContent2").value;
  		if(commentContent==''){
  			alert("评论内容不能为空！");
  			return false;
  		}
  		return true;
  	} 
     
</script>   


<script src="/ZHIHU/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
$(function () {
		   
 
   $("#btn1").click(function(){
		var x = 100;       
		var y = 900;  
		var num = Math.floor(Math.random() * 3 + 1);
		var index=$('.demo').children('img').length;
		var rand = parseInt(Math.random() * (x - y + 1) + y); 
		
		$(".demo").append("<img src=''>");
		$('img:eq(' + index + ')').attr('src','/ZHIHU/images/images/'+num+'.png')
		$("img").animate({
			bottom:"800px",
			opacity:"0",
			left: rand,
		},3000)
		
   })
}) 
</script>

<script src="/ZHIHU/js/jquery.js"></script>
<script type="text/javascript">

    //分享到QQ空间

    function one(){
        var share1=new ShareTip();
        var id=$("#sendurl").val();
        var sendurl="http://127.0.0.1:8080/ZHIHU/TopicInfoServlet?TopicId%3D"+$("#sendurl").val();
        var sendtitle=$("#sendtitle").val();
     
        var sendcontent=$("#sendcontent").val().substring(3,20)+"...";
        share1.sharetoqqzone(
        		
        		sendcontent,
        		sendurl,
                "http://ohghesbh6.bkt.clouddn.com/logo%20.png",
                sendtitle
        );
    }

    //新浪微博
    function two(){
        var share1=new ShareTip();
        var sendurl="http://localhost:8080/ZHIHU/TopicInfoServlet?TopicId="+$("#sendurl").val();
        var sendtitle=$("#sendtitle").val();
        share1.sharetosina(
        		sendtitle,
        		sendurl,
                "http://ohghesbh6.bkt.clouddn.com/logo%20.png"
        );
    }

    var ShareTip = function()  {};

    //分享到新浪微博
    ShareTip.prototype.sharetosina=function(title,url,picurl)
    {
        var sharesinastring='http://v.t.sina.com.cn/share/share.php?title='+title+'&url='+url+'&content=utf-8&sourceUrl='+url+'&pic='+picurl;
        window.open(sharesinastring,'newwindow','height=400,width=400,top=100,left=100');
    }
    //分享到QQ空间
    ShareTip.prototype.sharetoqqzone=function(title,url,picurl,ti)
    {
        var shareqqzonestring='http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?summary='+title+'&desc='+"知乎MINI"+'&title='+ti+'&url='+url+'&pics='+picurl;
        window.open(shareqqzonestring,'newwindow','height=400,width=400,top=100,left=100');
    }
</script>
<body>

	<script>
		function like(uId, tId, s) {
			$.ajax({
						type : "post",
						url : "LikeController",
						dataType : "text",
						data : {
							"UserId" : uId,
							"TopicId" : tId
						},
						success : function(Result) {
							document.getElementById(tId + "pic").src = "${pageContext.request.contextPath }/images/stargreen.png";
							document.getElementById(tId + "var").innerHTML = parseInt(s) + 1;
						},
						error : function(xhr, status, errMsg) {
							alert("点赞失败!");
						}
					});
		}
	</script>


	<div style="position: fixed; top: 0px; width: 100%;">

		<jsp:include page="../common/header.jsp"></jsp:include>
	</div>
	

	<div class="topic panel"
		style="width: 1000px; margin: 60px auto 10px auto; background-color: #F7F8FA">
		<div class="panel-heading"
			style="font-family: 黑体; font-size: 16px; background-color: #F5F6EB;">
			<img src="/ZHIHU/images/title.png">&nbsp;${requestScope.Topic.topicTitle}
		</div>
		<div class="panel-body">

			<div class="AnswerItem"
				style="margin: 3px 0px 10px 0px; height: 70px;">
				<span class="AuthorInfo-pic" style="float: left;"><a
					class="UserLink"
					href="/ZHIHU/pages/personIndex.jsp?id=${requestScope.Topic.topicUser}"><img
						class="media-object" src="${requestScope.Topic.topicUserHead}"
						style="width: 50px; height: 50px"></a>
				</span> <span class="AuthorInfo-head"
					style="float: left; margin-left: 10px;"> &nbsp;&nbsp;<a class="UserLink"
					href="/ZHIHU/pages/personIndex.jsp?id=${requestScope.Topic.topicUser}">${requestScope.Topic.topicUserNickName}</a>
				</span>&nbsp;
				<div class="RichText" style="margin-top: 10px; margin-left: 70px;">${requestScope.Topic.topicUserDesc}</div>
			</div>
			<div class="line"
				style="height: 1px; border-top: 1px solid #ddd; text-align: center;"></div>

			<div class="topic-content-part" style="margin: 10px 0px 5px 0px;">
				<p>
					<img src="/ZHIHU/images/content.png">&nbsp;&nbsp;
				</p>
				<div class="topic-content-detail" style="margin-left: 30px;">
					<span class="RichText">${requestScope.Topic.topicContent}</span>
					<div class="topic-pic">
					<c:if test="${requestScope.Topic.topicPic ne null}">
						<img alt=""
							src="${pageContext.request.contextPath }/topic-images/${requestScope.Topic.topicPic}"
							style="height: 200px;">
							<!-- <img src="/ZHIHU/images/like.png"style="width:30%"> -->
							</c:if>
							<input type="hidden" id="sendcontent" value="${requestScope.Topic.topicContent}">
					</div>
				</div>

			</div>
			<div class="other-info"
				style="float: right; color: #555; clear: both;">


  
  
                     











				<div style="margin-top: 25px; margin-left: -20px;">
					<c:choose>
						<c:when test="${User.userId ne null}">
							<c:choose>
								<c:when test="${requestScope.Topic.topicLikestate eq null}">
									<a
										onclick="like('${User.userId}','${requestScope.Topic.topicId}','${requestScope.Topic.topicStars}')"><img
										id="${requestScope.Topic.topicId}pic"
										src="${pageContext.request.contextPath }/images/starblack.png"
										style="width: 15px" id="btu1"></a>
								</c:when>
								<c:otherwise>
									<img class="media-object"
										src="${pageContext.request.contextPath }/images/stargreen.png"
										style="width: 15px">
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:otherwise>
							<a onclick="alert('请登录！');"><img
								src="${pageContext.request.contextPath }/images/starblack.png"
								style="width: 15px"></a>
						</c:otherwise>
					</c:choose>

					<div id="${requestScope.Topic.topicId}var"
						style="margin-left: 17px; margin-top: -17px">${requestScope.Topic.topicStars}</div>

				</div>
				<div style="margin-top: -17px; margin-left: 40px;">
					<img class="media-object"
						src="${pageContext.request.contextPath }/images/commentsblack.png"
						style="width: 15px">
					<div style="margin-top: -18px; margin-left: 17px">
						${requestScope.Topic.topicComments}</div>
				</div>


				  <div style="margin-top:-17px;margin-left:-60px;">
                               
   <img src="/ZHIHU/images/kongjian.png"  onclick="one()">
                           </div>
                             <div style="margin-top:-17px;margin-left:-100px;">
                               
<img src="/ZHIHU/images/weibo.png"  onclick="two()">
                           </div>
				   <input type="hidden" id="sendtitle" value="${requestScope.Topic.topicTitle}"> 
                           <input type="hidden" id="sendurl" value="${requestScope.Topic.topicId}"> 
			</div>
			


			<!-- 评论框开始 -->
			<div class="comments panel"
				style="margin: 80px 0px 0px 0px; padding: 10px 10px; border: 1px solid #e7eaf2; border-radius: 4px;">
				<c:if test="${User ne null }">
					<div>
						<p>发布评论：</p>
						<form
							action="${pageContext.request.contextPath }/comment?action=publishComment"
							method="post" onsubmit="return checkComment();">
							<textarea rows="" cols="" class="form-control"
								name="commentContent" id="commentContent"></textarea><br>
							<input type="hidden" name="commentTopic"
								value="${requestScope.Topic.topicId }"> <input
								type="submit" class="form-control" style="width: 100px;"
								value="提交" />
						</form>
					</div>
				</c:if>

				<div class="panel-heading"
					style="font-family: 黑体; font-size: 16px; font-color: #00343F; font-weight: 700;">评论(${requestScope.Topic.topicComments})</div>
				<c:forEach items="${requestScope.Comments}" var="cl">
					<div class="line"
						style="height: 1px; border-top: 1px solid #ddd; text-align: center; margin: 10px 0px;"></div>
					<div class="CommentItem-meta" style="margin: 10px 0px 0px 0px;">

						<span class="AuthorInfo-pic"> <a class="UserLink"
							href="/ZHIHU/pages/personIndex.jsp?id=${cl.commentUserId}"><img
								src="${cl.commentUserHead}" style="width: 40px; height: 40px"></a>

						</span> <span class="UserLink"><a class="UserLink"
							href="/ZHIHU/pages/personIndex.jsp?id=${cl.commentUserId}">${cl.commentUserNickName}</a></span>

						<c:choose>
							<c:when test="${cl.commentReplay ne '0'}">
								<span>回复 ${cl.replayCommentUserNickName}&nbsp</span>
								<span class="CommentItem-time">${cl.commentTime}</span>
								<div class="CommentItem-meta"
									style="margin-top: 10px; padding: 4px 20px 1px 80px; background-color: #E5FFE5">
									<span class="AuthorInfo-head"> <a class="UserLink"
										href="/ZHIHU/pages/personIndex.jsp?id=${cl.commentReplay}">${cl.replayCommentUserNickName}</a>
									</span>
									<div class="CommentItem-content" style="margin: 10px 0px;">${cl.replayCommentContent}</div>
								</div>
							</c:when>
							<c:otherwise>
								<span class="CommentItem-time">${cl.commentTime}</span>
							</c:otherwise>
						</c:choose>
						<div class="CommentItem-content" style="margin: 10px 0px;">${cl.commentContent}</div>
						<div class="CommentItem-footer">
							<c:if test="${User ne null }">
								<button type="button" class="btn btn-default"
									style="height: 20px; width: 35px; padding: 0px; float: right; margin-right: 60px;">
									<span style="text-align: center;" data-toggle="modal"
										data-target="#replay"
										onclick="document.getElementById('commentRepay').value='${cl.commentId}'">回复</span>
								</button>
							</c:if>
						</div>
						<br clear="both" />
					</div>
				</c:forEach>
				<!-- 评论框结束 -->
			</div>
			<!-- panel body end-->
		</div>
		<!-- panel end -->

		<div class="modal fade" id="replay" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">回复</h4>
					</div>
					<form
						action="${pageContext.request.contextPath }/comment?action=publishComment"
						method="post" onsubmit="return checkComment2();">
						<textarea rows="" cols="" class="form-control"
							name="commentContent" style="margin:20px;width:550px" id="commentContent2"></textarea><br>
						<input type="hidden" name="commentTopic"
							value="${requestScope.Topic.topicId }"> <input
							type="hidden" name="commentRepay" id="commentRepay" value="" >
							<div style="margin:10px;" >
						<input type="submit" class="form-control"
							value="提交" style="margin:10px;width:100px;float:right"/></div>
					</form>

				</div>
			</div>
		</div>
 <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">发布你的问题</h4>
				</div>
				<form
					action="${pageContext.request.contextPath }/TopicServlet?action=publish"
					method="post" enctype="multipart/form-data" onsubmit="return checkValue();">
					<div class="modal-body">
						<label>标题</label> <input type="text" class="form-control" id="topicTitle"
							name="topicTitle"><br>
							<label>描述</label>
						<textarea cols="10" rows="1" class="ckeditor" name="topicContent"
							id="topicContent"></textarea>
						<label>问题类别</label> <select class="form-control" name="topicType"
							id="topicType">
							<c:forEach var="type" items="${typeList}">
								<option value="${type.typeId }">${type.typeName }</option>
							</c:forEach>
						</select> <label>图片</label> <input type="file" class="form-control"
							name="file">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary">保存</button>
					</div>
				</form>
			</div>
		</div>
	</div>

		<!-- main div end -->
	</div>

	<jsp:include page="../common/footter.jsp"></jsp:include>
</body>
</html>