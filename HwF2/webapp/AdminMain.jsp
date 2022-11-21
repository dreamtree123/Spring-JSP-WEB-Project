<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- JSTL 사용하기 위해 태그라이브러리 임포트 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="${path}/views/css/AdminCss.css">

<title>관리자 메인</title>
</head>

<body>

	<!-- header -->
	<header>
		<div id="headerFirstDiv">
			<div>
				<a href="javascript:location.href='Main.jsp'"><img src="${path}/views/img/logo.png" style="width: 150px; height: 110px"/></a>
			</div>
			<div>BE NATURAL</div>
		</div>
	</header>

	<!-- content-->
	<div class="content">
	
		<div class="contentTop">
			<br><br>
			<a href="javascript:location.href='AdminMain.jsp'"><img class="contentTopImg" src="${path}/views/img/avataaars.svg" style="width: 100px; height: 100px" /></a>
			<br><br>
			<h1 class="contentTopText">관리자 [메인] 페이지</h1>
			<br><br>
		</div>
		
		<div class="contentBottom">
			<br><br><br><br><br>
			
			<a href="javascript:location.href='admin?cmd=AdminMemberSelect'"><img src="${path}/views/img/IconMemberSelect.png" alt="회원 조회" style="width: 150px; height: 150px"><span>회원 조회</span></a>

			<a href="javascript:location.href='views/jsp/admin/AdminGoodsSelect.jsp'"><img src="${path}/views/img/IconGoodsSelect.png" alt="상품 관리" style="width: 150px; height: 150px"><span>상품 관리</span></a>
			
			<a href="javascript:location.href='views/jsp/admin/AdminGoodsInsert.jsp'"><img src="${path}/views/img/IconGoodsInsert.png" alt="상품 등록" style="width: 150px; height: 150px"><span>상품 등록</span></a>
			
			<br><br><br><br><br>
			
			<a href="javascript:location.href='admin?cmd=AdminOrderSelect'"><img src="${path}/views/img/IconOrderSelect.png" alt="주문 조회" style="width: 150px; height: 150px"><span>주문 조회</span></a>
			
			<a href="javascript:location.href='admin?cmd=AdminQnA'"><img src="${path}/views/img/IconQnA.png" alt="QnA 확인" style="width: 150px; height: 150px"><span>QnA 확인</span></a>
			
			<%-- <a href="javascript:location.href='admin?cmd=AdminStock'"><img src="${path}/views/img/IconStock.png" alt="재고 현황" style="width: 150px; height: 150px"><span>재고 현황</span></a> --%>
			
			<br><br><br><br><br>
		</div>
		
		<!-- footer -->
		<footer>
			<div id="footerFirstDiv">
				<div>COPYRIGHTⓒ by WEBDESIGN. ALL RIGHTS RESERVED</div>
			</div>
		</footer>
		
	</div>

</body>
</html>