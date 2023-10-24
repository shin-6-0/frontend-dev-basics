<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src = "${pageContext.request.contextPath}/jquery/jquery-3.7.1.js"></script>
<script>
//load안에 h1, p , 이런식으로 부르면 해당 태그 안에 있는 것만 불러옴
$(function(){
	$('button').click(function(){
		$('#data').load('${pageContext.request.contextPath}/api/html h1');
	})
})
</script>
</head>
<body>
	<h1>AJAX Test : HTML Format Data</h1>
	<button>데이터 가져오기</button>
	<div id ="data"></div>
</body>
</html>