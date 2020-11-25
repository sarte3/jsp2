<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> <!-- write.jsp -->
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
$(function(){
	$('#name').blur(function(){
		if($(this).val().length<3||$(this).val().length>5){
			alert('아이디는 3자 이상 5자 이하입니다');
		
		}
	})
	
	$('#age').keydown(function(e){
		if(e.witch < 48 || e.witch > 57){
			alert('나이는 숫자만 입력하세요');
			return false;
		}
	})
	
	$('#juso').blur(function(){
		if($(this).val().length<=2){
			alert('주소는 2자 이상입니다');
		
		}
	})
	
	
})
</script>
<body>
<form method="post" action="write_ok.jsp">
<!-- 이름은 3자 이상 5자 이하, 나이는 숫자인가, 주소는 2자 이상 되면 전송하기-->
	이름 <input type="text" name="name" id="name"><p>
	나이 <input type="text" name="age" id="age"><p>
	주소 <input type="text" name="juso" id="juso"><p>
	<input type="submit" value="저장">
</form>
</body>
</html>