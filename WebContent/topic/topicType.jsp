
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="images/logo.png" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>type page</title>
<script type="text/javascript">
function checkValue(){
	var title=document.getElementById("topicTitle").value;
	if(title==''){
		alert('标题不能为空');
		return false;
	}
	return true;
}
</script>
</head>
<body>

	<jsp:include page="../common/header.jsp"></jsp:include>
	<br><br><br><br>
	<div style="width: 1000px; margin: 0 auto;">
		<div class="panel panel-default">
			<div class="panel-heading" style="font-family: 黑体; font-size: 16px;">话题广场</div>
			<div class="panel-body">
			<c:forEach items="${typeList }" var="type">
			<div style="width: 45%;padding: 10px;margin:10px;float:left;border: 1px solid #ddd;border-radius:5px;"
			onclick="window.location.href='TopicServlet?action=getAllTopicByType&type=${type.typeId}'">
			<img alt="" src="${type.typePic }" style="height: 80px;">
			<span style="font-family: 黑体;font-size: 20px;padding: 20px;">${type.typeName }</span>
			</div>
			</c:forEach>
			</div>
		</div>
		<!-- panel body end-->
		
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
		
	</div>
	<!-- panel end -->
	<!-- main div end -->
	<jsp:include page="../common/footter.jsp"></jsp:include>
</body>
</html>



