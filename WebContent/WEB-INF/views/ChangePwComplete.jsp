<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경 완료</title>

<!-- 부트스트랩, 제이쿼리 CDN -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- 폰트, 기타 라이브러리 -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese" rel="stylesheet">
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!--  -->
<link rel="stylesheet" href="<%=cp%>/css/view/change_pw_complete.css">

<!-- 파비콘 -->
<link rel="shortcut icon" href="<%=cp %>/favicon.ico">
<link rel="icon" href="<%=cp %>/favicon.ico">

</head>
<body>

	<div>
		<c:import url="Menu.jsp"></c:import>
		<br>
		<br>
		<br>
		<br>
		<div class="text-center container">
			<div class="card">
				<div class="card-header">
					<h1>비밀번호 변경</h1>
				</div><br>
				<h3>비밀번호 변경이 성공적으로 완료되었습니다.</h3><br>
				<h3>새로운 비밀번호로 다시 로그인 해 주세요.</h3><br>
				<button type="submit" class="btn btn-primary btn-lg">로그인</button>
			</div>
		</div>
	</div>
	

	<br />
	<br />
	<br />
	<br />
	<br />
	<div>
		<c:import url="Footer.jsp"></c:import>
	</div>

</body>
</html>