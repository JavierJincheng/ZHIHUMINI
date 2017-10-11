<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="/ZHIHU/images/logo.png" type="image/x-icon" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>联系我们-知乎mini</title>
<style>
.ContactPage-para {
	margin-top: 2em;
}

.ContactPage-para a {
	color: #222;
}
</style>
<script type="text/javascript">
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
	<jsp:include page="../common/header.jsp"></jsp:include><br>
	<br>
	<br>
	<br>

	<div style="width: 1000px; margin: 0 auto; border: 0px solid;">
		<div class="panel panel-default" style="border: 0px solid;">
			<div class="ContactPage">
				<h2 class="ContactPage-title">
					<img src="/ZHIHU/images/lianxi.png">&nbsp;联系我们
				</h2>
				<div class="ContactPage-para">
					知乎mini是知乎的简洁版，相较知乎它的功能更简单，更加易于上手，是追求轻便的不二选择。
					知乎以知识连接一切为使命，凭借认真、专业和友善的社区氛围和独特的产品机制，聚集了中国互
					联网上科技、商业、文化等领域里最具创造力的人群，将高质量的内容透过人的节点来成规模地生
					产和分享，构建高价值人际关系网络。用户通过问答等交流方式建立信任和连接，打造和提升个人 品牌价值，并发现、获得新机会。</div>
				<div class="ContactPage-para">
					公司名称：重邮东软A班第七组<br /> 地址：重庆市两江新区华山南路16号A座5-02<br /> 电话：023-9090980
				</div>
				<div class="ContactPage-para">请通过以下方式联系我们：）</div>
				<div class="ContactPage-para">品牌合作：bd@zhihumini.com</div>
				<div class="ContactPage-para">广告投放：ad@zhihumini.com</div>
				<div class="ContactPage-para">媒体垂询：media@zhihumini.com</div>
				<hr>
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
	<jsp:include page="../common/footter.jsp"></jsp:include>
</body>
</html>