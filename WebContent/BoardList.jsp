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
<title>List.jsp</title>

<!-- 부트스트랩, 제이쿼리 CDN -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- 로그인 페이지 자바스크립트, CSS -->
<script src="<%=cp%>/js/view/board_list.js"></script>
<link rel="stylesheet" href="<%=cp%>/css/view/board_list.css">

<!-- Font Awesome 5 -->
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- 파비콘 -->
<link rel="shortcut icon" href="<%=cp %>/favicon.ico">
<link rel="icon" href="<%=cp %>/favicon.ico">

</head>
<body>
<c:import url="Menu.jsp"></c:import>
<form>
<div class="container">
	<div id="title">
		<h1>자 유 게 시 판 </h1> 
	</div>
	<div class="form-group">
		<div class="input-group mb-3 d-flex justify-content-end row align-items-start">
			<div class="input-group-prepend">   
				<select name="searchKey" class="selectFiled custom-select">
					<option selected>선택</option>
					<option value="subject">제목</option>
					<option value="name">작성자</option>
					<option value="content">내용</option>
				</select>
				<input type="text" name="searchValue" class="textFiled" class="form-control">
			</div>
         
			<div class="input-group-append">
				<button class="btn btn-secondary" type="button" id="button-addon2">검색</button>
			</div>
		</div>
	</div>

	<div id="bbsList_list" class="">
	<div class="bbsHeader">
		<div class="header no">No</div>
		<div class="header title">제목</div>
		<div class="header writer">작성자</div>
		<div class="header date">작성일</div>
		<div class="header viewCount">조회수</div>
		<div class="header recomm">추천수</div>
	</div>
	<div class="bbsContents">
		<div class="content no">2</div>
		<div class="content title contentTitle"><a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색 다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a></div>
		<div class="content writer">아웃사이더</div>
		<div class="content date">2019-07-04</div>
		<div class="content viewCount">10</div>
		<div class="content recomm">5</div>
	</div>
	<div class="bbsContents">
		<div class="content no">1</div>
		<div class="content title contentTitle"><a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색 다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a></div>
		<div class="content writer">아웃사이더</div>
		<div class="content date">2019-07-04</div>
		<div class="content viewCount">10</div>
		<div class="content recomm">5</div>
	</div>
	<br><br>
      
	<ul class="pagination pagination-sm justify-content-center">
		<li class="page-item disabled"><a class="page-link text-dark" href="#">Previous</a></li>
		<li class="page-item active"><a class="page-link text-dark" href="#">1</a></li>
		<li class="page-item"><a class="page-link text-dark" href="#">2</a></li>
		<li class="page-item"><a class="page-link text-dark" href="#">3</a></li>
		<li class="page-item"><a class="page-link text-dark" href="#">Next</a></li>
	</ul>
      
	<div id="rightHeader" class="row align-items-end justify-content-end">
		<button class="btn btn-secondary pull-right" onclick="javascript:location.href='<%=cp%>/Created.jsp'">
		<i class="fa fa-pencil-square-o"></i>글쓰기</button>
	</div>
    
	</div>
   
</div>
</form>

<br>

<div>
	<c:import url="Footer.jsp"></c:import>
</div>

</body>
</html>

