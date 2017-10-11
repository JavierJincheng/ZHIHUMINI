
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="images/logo.png" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>知乎mini</title>
<script src="/ZHIHU/js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var content = $("#contentInput").val();

		$("#topicContent").html(deletep(content));

	});
	function nextPage() {
		var pagenow = ${requestScope.PageNow}
		var pageend = ${requestScope.PageCount}
		if (pagenow == pageend) {
			alert("已经为最后一页")
			return fasle;
		} else {
			location.href = "TopicServlet?PageNow=${PageNow+1}";
			return true;
		}
	}
	function lastPage() {
		var pagenow = ${requestScope.PageNow}
		if (pagenow == 1) {
			alert("已经为第一页")
			return fasle;
		} else {
			location.href = "TopicServlet?PageNow=${PageNow-1}";
			return true;
		}
	}
	function like(uId, tId, s) {
		$
				.ajax({
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

	function deletep(data) {

		var b = data.replace(/<.*?>/ig, "");
		return b;
	}

	function checkValue() {
		var title = document.getElementById("topicTitle").value;
		if (title == '') {
			alert('标题不能为空');
			return false;
		}
		return true;
	}
</script>
</head>
<body>


	<jsp:include page="common/header.jsp"></jsp:include><br>
	<br>
	<br>
	<br>
	<div style="width: 1000px; margin: 0 auto;">
		<div class="panel panel-default">
			<div class="panel-heading" style="font-family: 黑体; font-size: 16px;">最新话题</div>
			<div class="panel-body">
				<c:forEach items="${requestScope.list}" var="l">
					<!-- 问题框开始 -->
					<div class="panel panel-default"
						style="margin: 5px 20px; padding: 5px 10px;">

						<div class="media-left media-middle">
							<span class="AuthorInfo-pic"> <a class="UserLink"
								href="/ZHIHU/pages/personIndex.jsp?id=${l.topicUser}"><img
									src="${l.topicUserHead}" style="width: 100px; height: 80px;"></a>
							</span> <span class="UserLink" style="text-align: center"><a
								class="UserLink"
								href="/ZHIHU/pages/personIndex.jsp?id=${l.topicUser}">${l.topicUserNickName}</a></span>
						</div>


						<div class="media-body"
							onclick="location.href='TopicInfoServlet?TopicId=${l.topicId}'">

							<h4 class="media-heading">
								<img src="/ZHIHU/images/title.png">&nbsp;${l.topicTitle}
							</h4>
							<img src="/ZHIHU/images/content.png">${l.topicContent}

						</div>

						<div class="other-info"
							style="float: right; width: 100px; height: 30px">

							<div style="margin-left: 10px; margin-top: 5px;">
								<c:choose>
									<c:when test="${User.userId ne null}">
										<c:choose>
											<c:when test="${l.topicLikestate eq null}">
												<a
													onclick="like('${User.userId}','${l.topicId}','${l.topicStars}')"><img
													id="${l.topicId}pic"
													src="${pageContext.request.contextPath }/images/starblack.png"
													style="width: 15px"></a>
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
								<div id="${l.topicId}var"
									style="margin-left: 18px; margin-top: -17px;">${l.topicStars}</div>
							</div>

							<div style="margin-left: 55px; margin-top: -17px;">
								<img class="media-object"
									src="${pageContext.request.contextPath }/images/commentsblack.png"
									style="width: 15px">
								<div style="margin-left: 18px; margin-top: -18px;">${l.topicComments}</div>
							</div>


						</div>
						<br clear="both" />
					</div>
				</c:forEach>
			</div>
			<div class="paging-info"
				style="margin-bottom: 10px; text-align: center">
				<a href="TopicServlet?PageNow=1">首页</a> <a
					onclick="return lastPage()">上一页</a> <a onclick="return nextPage()">下一页</a>
				<a href="TopicServlet?PageNow=${requestScope.PageCount}">末页</a>
				<lable>共${requestScope.PageCount}页</lable>
			</div>
		</div>
		<!-- panel body end-->
	</div>
	<!-- panel end -->


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
					method="post" enctype="multipart/form-data"
					onsubmit="return checkValue();">
					<div class="modal-body">
						<label>标题</label> <input type="text" class="form-control"
							id="topicTitle" name="topicTitle"><br> <label>描述</label>
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
	</div>
	<!-- main div end -->
	<jsp:include page="common/footter.jsp"></jsp:include>
</body>
</html>



