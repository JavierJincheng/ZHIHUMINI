
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="images/logo.png" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>topic manage</title>
<script type="text/javascript">
function checkValue(){
	var title=document.getElementById("topicTitle").value;
	if(title==''){
		alert('标题不能为空');
		return false;
	}
	return true;
}
	function nextPage() {
		var pagenow = ${requestScope.PageNow}
		var pageend = ${requestScope.PageCount}
		if (pagenow == pageend) {
			alert("已经为最后一页")
			return fasle;
		} else {
			location.href = "topicmanage?action=getAllTopic&PageNow=${PageNow+1}";
			return true;
		}
	}
	function lastPage() {
		var pagenow = ${requestScope.PageNow}
		if (pagenow == 1) {
			alert("已经为第一页")
			return fasle;
		} else {
			location.href = "topicmanage?action=getAllTopic&PageNow=${PageNow+1}";
			return true;
		}
	}
	function deleteTopic(topicId) {
		var msg = "您真的确定要删除吗？\n\n请确认！";
		if (confirm(msg) == true) {
			location.href = "${pageContext.request.contextPath}/topicmanage?action=deleteTopicById&topicId="+topicId;
		} else {
			return false;
		}
	}
</script>
</head>
<body>

	<jsp:include page="../common/header.jsp"></jsp:include><br><br><br><br>
	<div style="width: 1000px; margin: 0 auto;">
		<div class="panel panel-default">
			<div class="panel-heading" style="font-family: 黑体; font-size: 16px;">所有话题</div>
			<div class="panel-body">
				<c:forEach items="${requestScope.list}" var="l">
					<!-- 问题框开始 -->
					<div class="panel panel-default"
						style="margin: 5px 20px; padding: 5px 10px;">
						<div class="media-left media-middle">
							<span class="AuthorInfo-pic"> <a class="UserLink"
								href="/ZHIHU/pages/personIndex.jsp?id=${l.topicUser}"><img
									src="${l.topicUserHead}" style="height: 100px;"></a>
							</span> <span class="UserLink"><a class="UserLink"
								href="/ZHIHU/pages/personIndex.jsp?id=${l.topicUser}">${l.topicUserNickName}</a></span>
						</div>
						<div class="media-body"
							onclick="location.href='TopicInfoServlet?TopicId=${l.topicId}'">
							<h4 class="media-heading">
								<img src="/ZHIHU/images/title.png">&nbsp;${l.topicTitle}
							</h4>
							<img src="/ZHIHU/images/content.png">&nbsp;${l.topicContent}
						</div>
						<div style="float: right;">
							<input class="btn btn-danger" type="button" value="删除" onclick="deleteTopic('${l.topicId}')">
						</div>
						<br clear="both" />
					</div>
				</c:forEach>
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
								<option value="${type.typeId }">${type.typeName}</option>
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
	<jsp:include page="../common/footter.jsp"></jsp:include>
</body>
</html>



