<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css" />

<script src="js/jquery-3.2.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<link rel=stylesheet href="css/bootstrap.min.css">
	<link rel=stylesheet href="css/style.css">
	<link rel="shortcut icon" href="images/favicon.ico">

<style>
body{
	background-color: #000000;
	color:red;
	font-family:メイリオ;
}
h1{
background-color:#ffffff;
}
</style>

<title>S2A120</title>
</head>
<body>
<%! int cn = 0; %>
<% cn++ ;%>
<h1>ToDoアプリケーション</h1>
<%! int kg=0; %>
入力画面：あなたは
<% kg=cn%2; %>
<% if( kg== 0){ %>
偶数人目のお客様です(<%= cn %>人目)
<% }else{ %>
奇数人目のお客様です(<%= cn %>人目)
<% } %>
<h2>重要度：</h2>
<form action="ResponceServlet" method="get">
<select name="important">
			<option value="5">超やばい</option>
			<option value="4">やばい</option>
			<option value="3">ちょいやばい</option>
			<option value="2">ちょい余裕</option>
			<option value="1">余裕</option>
		</select>
<h2>内容：</h2>
	<input type="text" name="nai" size=20>
	<input type="submit" value="送信">
</form>
</body>
</html>