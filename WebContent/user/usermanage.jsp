
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" href="../images/logo.png" type="image/x-icon"/>
<script src="../js/jquery.js"></script>
<script src="../js/jquery.mCustomScrollbar.concat.min.js"></script>
<link
	href="../css/style.css"
	rel="stylesheet" >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
<style type="text/css">
a{ text-decoration: none;}
</style>
<script type="text/javascript">
function getstate(data){
	if(data==1){return '管理员';}
	else{return '普通用户';}
	
}
function checkValue(){
	var title=document.getElementById("topicTitle").value;
	if(title==''){
		alert('标题不能为空');
		return false;
	}
	return true;
}


$(document).ready(function(){ 
	$.ajax({
		 
	        type: "POST",
	        cache: false,
	        url: "../SelectAllUserController",
	        
	       dataType: "json",
	        success: function (data) {
	            
	        	   if (data.code == 1) {
	        		   var userid=data.size;
	        		var str="";
	        		for(var i=0;i<data.data.length;i++){
	        			str+="<tr><td style='width:65px;'title='"+data.data[i].userId+"'>"+data.data[i].userId.substring(0,8)+"...</td>"+
"<td title='"+data.data[i].userNiceName+"'>"+data.data[i].userNiceName.substring(0,3)+"...</td><td>"+data.data[i].userAge+"</td><td>"+data.data[i].userName+"</td><td title='"+data.data[i].userHead+"'><img style='width:60px;' src='"+data.data[i].userHead+"'></td><td title='"+data.data[i].userDesc+"'>"+data.data[i].userDesc.substring(0,18)+"...</td><td>"+getstate(data.data[i].userState)+"</td><td>";

 if(userid==data.data[i].userId){
	 str+="<a href='' class='inner_btn' style='text-decoration: none;background:green'>it's you</a></td></tr>";
 }else{
	 str+="<a href='' onclick='deletes("+data.data[i].userId+")' class='inner_btn' style='text-decoration: none;'>删除</a></td></tr>";
 }
	        			
	        			
	        		}
	        		   
	        		   $("#tables").append(str); 
	        	   }else{
	        		   var str="";
	        		   str="<div class='EmptyState-inner' style='text-align:center'><svg xmlns='http://www.w3.org/2000/svg' width='150' height='120'"+
"viewBox='0 0 150 120' class='EmptyState-image'><title></title><g><g fill='none' fill-rule='evenodd'>"+
"<path fill='#EBEEF5' fill-rule='nonzero' d='M109.545 78h5.463A2.995 2.995 0 0 0 118 75.01V34.99c0-1.648-1.34-2.99-2.992-2.99H62.992A2.995 2.995 0 0 0 60 34.99v2.027h-3V34.99c0-3.308 2.69-5.99 5.992-5.99h52.016A5.993 5.993 0 0 1 121 34.99v40.02c0 3.308-2.69 5.99-5.992 5.99h-2.744l-.558 5.65c-.217 2.197-1.783 2.842-3.49 1.45l-8.7-7.1h-18.69v-3h19.76l8.29 6.767.67-6.767zM37.33 91.9c-1.942 1.057-3.23.15-2.878-2.027l1.237-7.64A25.886 25.886 0 0 1 30 66c0-14.36 11.637-26 26-26 14.36 0 26 11.637 26 26 0 14.36-11.637 26-26 26-4.627 0-8.973-1.21-12.737-3.327L37.33 91.9zm5.958-6.656l1.447.814A22.878 22.878 0 0 0 56 89c12.705 0 23-10.296 23-23 0-12.705-10.296-23-23-23-12.705 0-23 10.296-23 23a22.894 22.894 0 0 0 5.03 14.36l.833 1.04-1.11 6.855 5.535-3.01zm13.108-31.452c2.304 0 4.176.612 5.616 1.908 1.44 1.26 2.16 2.988 2.16 5.148 0 1.764-.468 3.24-1.368 4.392-.324.396-1.332 1.332-3.024 2.808-.684.576-1.188 1.224-1.512 1.872-.396.72-.576 1.512-.576 2.376v.612H53.84v-.612c0-1.332.216-2.484.72-3.42.468-1.008 1.836-2.484 4.068-4.464l.612-.684c.648-.828 1.008-1.692 1.008-2.628 0-1.26-.36-2.232-1.044-2.952-.72-.72-1.764-1.08-3.06-1.08-1.62 0-2.808.504-3.528 1.548-.648.864-.972 2.088-.972 3.672h-3.78c0-2.628.756-4.68 2.268-6.192 1.512-1.548 3.6-2.304 6.264-2.304zm-.648 21.06c.756 0 1.404.216 1.908.72.504.468.756 1.08.756 1.836s-.288 1.368-.792 1.872a2.703 2.703 0 0 1-1.872.72c-.72 0-1.368-.252-1.872-.756s-.756-1.116-.756-1.836c0-.756.252-1.368.756-1.836.504-.504 1.152-.72 1.872-.72z'></path><path fill='#F7F8FA' d='M83.23 56h24.275c.818 0 1.495-.672 1.495-1.5 0-.834-.67-1.5-1.495-1.5H81.93a28.845 28.845 0 0 1 3.002 11h12.56a1.5 1.5 0 1 1 0 3h-12.51a29.422 29.422 0 0 0-.05-3zM72.285 42h35.22c.826 0 1.495.666 1.495 1.5 0 .828-.677 1.5-1.495 1.5H76a28.945 28.945 0 0 0-3.715-3z'>"+
"</path></g></g></svg><!-- react-text: 2614 --><span style='margin-left:-100px;color:gray'>还没有用户</span><!-- /react-text --></div>";
$("#tables").html(str);  
	        	   }
	         
	        }

	    });
});



function deletes(data){
	$.ajax({
		 
        type: "POST",
        cache: false,
        url: "../DeleteUserController",
        data:{id:data},
       dataType: "json",
        success: function (data) {
            
        	   if (data.code == 1) {
        	alert("ok!");
        	   }else{
        		   alert("删除失败!");
        	   }
         
        }

    });
	
	
}
</script>
</head>
<body>

    <jsp:include page="../common/header.jsp"></jsp:include><br><br><br><br>
    <div style="width: 1000px; margin: 0 auto;">
        <div class="panel panel-default">
            <div class="panel-heading" style="font-family: 黑体; font-size: 16px;"><img src="/ZHIHU/images/user.png">&nbsp;所有用户</div>
            <div class="panel-body">
               
                   <table class="table" id="tables">
       <tr>
        <th>用户ID</th>
        <th>用户昵称</th>
        <th>年龄</th>
        <th>用户Email</th>
        <th>用户头像</th>
        <th>用户描述</th>
        <th>用户权限</th>
        <th>操作</th>
       </tr>
    
 
      
      </table>
            </div>
            
            
      
</div>

    </div>
    <!-- main div end -->
    
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
    <jsp:include page="../common/footter.jsp"></jsp:include>
</body>
</html>



