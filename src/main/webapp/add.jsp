<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%
	String path=request.getContextPath();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="<%=path%>/css/index_work.css"/> 
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
</head>
<body>
 <form>
  用户名:<input type="text" name="username"><br><br>
  密码:<input type="text" name="password"><br><br>
  确认密码:<input type="text" name="password1"><br><br>
 性别:<input type="radio" name="gender" value="0">先生
    <input type="radio" name="gender"  value="1">女士<br><br>
    <input type="button" value="开始注册" onclick="zc()">
 </form>
</body>
<script type="text/javascript">


function zc(){
	var pwd1=$("[name=password]").val();
	var pwd2=$("[name=password1]").val();
	var username=$("[name='username']").val();
	$.post("/usertest",{username:username},function (arr){
		if(arr==1){
			alert("用户已存在");
			$("#r").attr("disabled",true);
		}else{
			$("#r").attr("disabled",false);
		}
	})
	if(pwd1==pwd2){
		$.post("",$("form").serialize(),function(arr){
			if(arr>0){
				alert("注册成功");
			}else{
				alert("注册失败");
			}
		},"json")
	}else{
		alert("两次密码不一致");
	}
}
/* function test(){
	var username=$("[name='username']").val();
	$.post("/usertest",{username:username},function (arr){
		if(arr==1){
			alert("用户已存在");
			$("#r").attr("disabled",true);
		}else{
			$("#r").attr("disabled",false);
		}
	})
} */
</script>
</html>
