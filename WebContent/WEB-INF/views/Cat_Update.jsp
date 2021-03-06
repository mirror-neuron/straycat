<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>길고양이 수정</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<script type="text/javascript" src="<%=cp %>/js/view/cat_update.js"></script>
	<link rel="stylesheet" href="<%=cp %>/css/view/cat_update.css">
</head>
<body>


<c:import url="Menu.jsp"></c:import>

<div class="container m30">
   <h1>수정<span>길냥이 정보 수정</span></h1>
   <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam dolor reiciendis aliquid rem atque accusamus ab voluptate quam aspernatur magnam maxime nisi voluptas unde nesciunt dicta aliquam quas quasi quaerat!
   </span>
   <hr><br><br>
   
   
   <div class="row">
       <div class="col-5 text-center">
      <img src="img/straycat.jpg" class="img1"><br><br>

      <label class="btn btn-primary"> 사진첨부<input type="file" class="form-control-file" id="imgUpload"></label>

      </div>
       <div class="col-7">
       <div class="form-group row">
          <label for="colFormLabel" class="col-sm-2 col-form-label">이름</label>
          <div class="col-sm-10">
            <label for="colFormLabel" class="col-sm-2 col-form-label">야옹이</label>
          </div>
        </div><br>
       <div class="form-group row">
          <label for="colFormLabel" class="col-sm-2 col-form-label">지역</label>
          <div class="col-sm-2">
            <label for="colFormLabel" class="col-form-label">서울시</label>
          </div>
          <div class="col-sm-3">
            <label for="colFormLabel" class="col-form-label">마포구</label>
          </div>
          <div class="col-sm-5">
            <label for="colFormLabel" class="col-form-label">서교동</label>
          </div>
        </div><br>
       <div class="form-group row">
          <label for="colFormLabel" class="col-sm-2 col-form-label">종류</label>
          <div class="col-sm-10">
            <label for="colFormLabel" class="col-form-label">코리안숏헤어(치즈태비)</label>
          </div>
        </div><br>
       <br>
       <div class="form-group row">
          <label for="colFormLabel" class="col-sm-4 col-form-label">고양이 특이사항</label>
          <div class="col-sm-8">
            <textarea class="form-control" id="catEtc1" rows="3"></textarea>
            <div ><span id="counter1">0</span> / 500</div>
          </div>
        </div><br>
       <div class="form-group row">
          <label for="colFormLabel" class="col-sm-4 col-form-label">고양이 건강상태</label>
          <div class="col-sm-8">
            <textarea class="form-control" id="catEtc2" rows="3"></textarea>
            <div ><span id="counter2">0</span> / 500</div>
          </div>
        </div><br>
       <br>
      <button type="button" class="btn btn-primary">수정하기</button>
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