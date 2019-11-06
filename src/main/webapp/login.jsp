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
<h1>欢迎回来</h1>
	<form>
	用户名:<input type="text" name="username" id="username"><br><br>
	密码:<input type="text" name="password" id="password"><br><br>&nbsp&nbsp&nbsp&nbsp
	<input type="button" value="登录" onclick="login()">
	<br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp如果没有账号请<a href="/toadd">点这里注册</a>
	</form>
</body>
<script type="text/javascript">
function login(){
	var check=true;
	var username=$("#username").val().trim();
	var password=$("#password").val().trim();
	if(username == ""){
		alert("用户名不能为空");
		check=false;
	}else if(password ==""){
		alert("密码不能为空");
		check=false;
	}
	if(check){
		$.post("<%=path%>/login",
			$("form").serialize(),
			function(data){
			if(data){
				alert("恭喜您登录成功");
				/* location="/getlist"; */
			}else{
				alert("用户名或密码错误");
				location="/login.jsp";
			}
		},"json")
	}
}
</script>
</html>
