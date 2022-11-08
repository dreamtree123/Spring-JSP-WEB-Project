<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css"
	href="${path}/views/css/allList.css" />
<script type="text/javascript" src="${path}/views/js/all.js"></script>
<title>mypage</title>
</head>
<body>
	<header>
		<div id="headerFirstDiv">
			<div>
				<img src="${path}/views/img/logo.png" />
			</div>
			<div>홈페이지 제목 (팀명)</div>
		</div>

		<nav>
			<p>
				<input type="text" value="" placeholder="Search" />
			</p>

			<table>
				<tr>
					<td id="1" onclick="change(this.id)">Home</td>
					<td id="2" onclick="change(this.id)">HealthFood</td>
					<td id="3" onclick="change(this.id)">HealthCafe</td>
					<td id="4" onclick="change(this.id)">HealthNutrients</td>
					<td id="5" onclick="change(this.id)">Survey</td>
					<td id="6" onclick="change(this.id)">InbodyTest</td>
					<td id="7" onclick="change(this.id)">Community</td>
				</tr>
			</table>

		</nav>






	</header>

	<div id="mypage">
		<table id="mypage">
			<tr id="id">
				<td>ID : ${memberid}
			</tr>
			<tr id="name">
				<td>Name : ${membername}
			</tr>
			<tr id="sex">
				<td>sex : ${membersex}
			</tr>
			<tr id="surveylist">
				<td>Surveylist<input type="button" value="Surveylist"
					onclick="location.href='Member?cmd=surveylist'"></td>
			</tr>
		
			<tr id="inbody">
				<td>InbodyTest<input type="button" value="inbody"
					onclick="location.href='Member?cmd=inbody'">
			</tr>

			<tr id="community">
				<td>Community
			</tr>

		</table>

	</div>







	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<input type="button" value="로그아웃"
		onclick="location.href='Member?cmd=logout'">
	<footer>회사 이름, 대표 이름 등등</footer>
</body>
</html>