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

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- Font Awesome 5 -->
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'
	integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ'
	crossorigin='anonymous'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">

*{
	font-family: 맑은 고딕;
}

h2 {
	font-weight: bold;
	letter-spacing: 5px;
	margin-top:40px;
	
}

dt {
	display: inline;
	text-align: center;
	font-size: small;
}

dd {
	display: inline;
	text-align: center;
}

.page-item.active .page-link {
	z-index: 1;
	color: #fff;
	background-color: #c7c9d7;
	border-color: #c7c9d7;
}

.No {
	width: 4%;
}

.Category {
	width: 8%;
}

.Subject {
	width: 36%;
	text-align: left;
}

.Writer {
	width: 12%;
}

.Date {
	width: 20%;
}

.Viewed {
	width: 10%;
}

.Like {
	width: 10%;
}
</style>


</head>
<body>

	<c:import url="Menu.jsp"></c:import>
	
	<div class="container">
		<section class="container">
			<div id="breadcrumb" class="">
				<h2 class="h2">자유게시판</h2>
				<ul class="u-list-inline pull-right">
					<li id="breadcrumb-home" class="list-inline-item">
						<a class="text-dark" href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a>
						<i class="">></i>
					</li>
					<%-- 
					<li id="breadcrumb-category" class="list-inline-item">
						<a class="text-dark" href="#!"></a>
						<i class="">/</i>
					</li>
					--%>
					<li id="breadcrumb-subcategory" class="list-inline-item">
						<span>자유게시판</span>
					</li>
				</ul>
			</div>
		</section>
		
		<div
			class="input-group mb-3 d-flex justify-content-end row align-items-start">
			<div class="input-group-prepend">
				<select name="searchKey" class="selectFiled custom-select">
					<option selected>선택</option>
					<option value="subject">제목</option>
					<option value="name">작성자</option>
					<option value="content">내용</option>
				</select> <input type="text" name="searchValue" class="textFiled"
					class="form-control">
			</div>

			<div class="input-group-append">
				<button class="btn btn-secondary" type="button" id="button-addon2">검색</button>
			</div>
		</div>

	</div>

	<div class="container">
		<div id="bbsList_list" class="">
			<div>
				<dl class="list-head list-group list-group-horizontal">
					<dt class="list-group-item  list-group-item-secondary No">No</dt>
					<dt class="list-group-item  list-group-item-secondary Category">구분</dt>
					<dt class="list-group-item  list-group-item-secondary Subject">제목</dt>
					<dt class="list-group-item  list-group-item-secondary Writer">작성자</dt>
					<dt class="list-group-item  list-group-item-secondary Date">작성일</dt>
					<dt class="list-group-item  list-group-item-secondary Viewed">조회수</dt>
					<dt class="list-group-item  list-group-item-secondary Like">추천수</dt>

				</dl>
			</div>

			<div>
				<dl class="list-group list-group-horizontal">
					<dd class="list-group-item No">1</dd>
					<dd class="list-group-item Category">잡담</dd>
					<dd class="list-group-item Subject">
						<a href="#" class="text-dark">안녕하세요~~ </a><i
							class='far fa-comment'>3</i>
					</dd>
					<dd class="list-group-item Writer">유진석</dd>
					<dd class="list-group-item Date">2019-05-21</dd>
					<dd class="list-group-item Viewed">3</dd>
					<dd class="list-group-item Like">0</dd>
				</dl>
			</div>


			<div>
				<dl class="list-group list-group-horizontal">
					<dd class="list-group-item No">2</dd>
					<dd class="list-group-item Category">일상</dd>
					<dd class="list-group-item Subject">
						<a href="#" class="text-dark">안녕하세요,진석이에요. </a><i
							class='far fa-comment'>0</i>
					</dd>
					<dd class="list-group-item Writer">무진석</dd>
					<dd class="list-group-item Date">2019-06-21</dd>
					<dd class="list-group-item Viewed">5</dd>
					<dd class="list-group-item Like">1</dd>
				</dl>
			</div>

			<div>
				<dl class="list-group list-group-horizontal">
					<dd class="list-group-item No">3</dd>
					<dd class="list-group-item Category">일상</dd>
					<dd class="list-group-item Subject">
						<a href="#" class="text-dark">안녕하세요,진석이에요. </a><i
							class='far fa-comment'>0</i>
					</dd>
					<dd class="list-group-item Writer">무진석</dd>
					<dd class="list-group-item Date">2019-06-21</dd>
					<dd class="list-group-item Viewed">5</dd>
					<dd class="list-group-item Like">1</dd>
				</dl>
			</div>

			<div>
				<dl class="list-group list-group-horizontal">
					<dd class="list-group-item No">4</dd>
					<dd class="list-group-item Category">일기</dd>
					<dd class="list-group-item Subject">
						<a href="#" class="text-dark">안녕하세요,진석이에요. </a><i
							class='far fa-comment'>0</i>
					</dd>
					<dd class="list-group-item Writer">무진석</dd>
					<dd class="list-group-item Date">2019-06-21</dd>
					<dd class="list-group-item Viewed">5</dd>
					<dd class="list-group-item Like">1</dd>
				</dl>
			</div>

			<div>
				<dl class="list-group list-group-horizontal">
					<dd class="list-group-item No">5</dd>
					<dd class="list-group-item Category">질문</dd>
					<dd class="list-group-item Subject">
						<a href="#" class="text-dark">안녕하세요,나래에요. </a><i
							class='far fa-comment'>0</i>
					</dd>
					<dd class="list-group-item Writer">무진석</dd>
					<dd class="list-group-item Date">2019-07-21</dd>
					<dd class="list-group-item Viewed">4</dd>
					<dd class="list-group-item Like">3</dd>
				</dl>
			</div>

			<div>
				<dl class="list-group list-group-horizontal">
					<dd class="list-group-item No">6</dd>
					<dd class="list-group-item Category">잡담</dd>
					<dd class="list-group-item Subject">
						<a href="#" class="text-dark">안녕하세요,윤비에요. </a><i
							class='far fa-comment'>0</i>
					</dd>
					<dd class="list-group-item Writer">진윤비</dd>
					<dd class="list-group-item Date">2019-07-21</dd>
					<dd class="list-group-item Viewed">4</dd>
					<dd class="list-group-item Like">3</dd>
				</dl>
			</div>

			<div>
				<dl class="list-group list-group-horizontal">
					<dd class="list-group-item No">7</dd>
					<dd class="list-group-item Category">일기</dd>
					<dd class="list-group-item Subject">
						<a href="#" class="text-dark">상현이에요~~</a><i class='far fa-comment'>0</i>
					</dd>
					<dd class="list-group-item Writer">남상현</dd>
					<dd class="list-group-item Date">2019-04-21</dd>
					<dd class="list-group-item Viewed">4</dd>
					<dd class="list-group-item Like">6</dd>
				</dl>
			</div>

			<br> <br>

			<ul class="pagination pagination-sm justify-content-center">
				<li class="page-item disabled"><a class="page-link text-dark"
					href="#">Previous</a></li>
				<li class="page-item active"><a class="page-link text-dark"
					href="#">1</a></li>
				<li class="page-item"><a class="page-link text-dark" href="#">2</a></li>
				<li class="page-item"><a class="page-link text-dark" href="#">3</a></li>
				<li class="page-item"><a class="page-link text-dark" href="#">Next</a></li>
			</ul>

			<div id="rightHeader" class="row align-items-end justify-content-end">
				<button class="btn btn-primary pull-right"
					onclick="javascript:location.href='<%=cp%>/Created.jsp'">
					<i class="fa fa-pencil-square-o"></i>글쓰기
				</button>
			</div>

		</div>
	</div>

	</div>

</body>
</html>

