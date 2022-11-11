<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" type="text/css" href="${path}/views/css/allList.css" />
<script type="text/javascript" src="${path}/views/js/all.js"></script>

<title>헬스용품 전체 페이지</title>
</head>

<body>
	<header>
		<div id="headerFirstDiv">
			<div>
				<a href="javascript:location.href='Main.jsp'"><img src="${path}/views/img/logo.png" /></a>
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
					<td id="2" onclick="change(this.id)">HealthGoods</td>
					<td id="3" onclick="change(this.id)">HealthFood</td>
					<td id="4" onclick="change(this.id)">HealthNutrients</td>
					<td id="5" onclick="location.href='Member?cmd=surveylist'">Survey</td>
              		<td id="6" onclick="location.href='Member?cmd=inbodylist'">InbodyTest</td>
					<td id="7" onclick="change(this.id)">Community</td>
				</tr>
			</table>
		</nav>
	</header>

	<div id="selectList">
	
		<article class="MonthMenu" id="s1">
			<img src="${path}/views/img/getMuscle.jpg" />
			<div>
				<table>
					<th colspan="2">이달의 HOT & SALE 메뉴</th>
					<tr>
						<td><img src="${path}/views/img/logo.png" /></td>
						<td><img src="${path}/views/img/logo.png" /></td>
					</tr>
					<tr>
						<td><img src="${path}/views/img/logo.png " /></td>
						<td><img src="${path}/views/img/logo.png" /></td>
					</tr>
				</table>

				<table id="healthintro">
					<th>헬스장 및 운동법 소개</th>
					<tr>
						<td><img src="${path}/views/img/logo.png" /></td>
					</tr>
				</table>
			</div>
		</article>
		
		
		<!--헬스용품 카테고리-->
		<article class="category" id="s2">
			<table>
				<th colspan="4">헬스용품 카테고리</th>
				<tr>
					<td onclick="location.href='healthgoods?cmd=healthGoodsList'">
						<h1>전체</h1> <img src="${path}/views/img/IconHealthGoods.png" style="width: 150px; height: 150px" />
					</td>
					<td onclick="location.href='healthgoods?cmd=selectDumbbell'">
						<h1>운동용품</h1> <img src="${path}/views/img/IconHealthGoodsDumbbell.png" style="width: 150px; height: 150px"/>
					</td>
					<td onclick="location.href='healthgoods?cmd=selectBelt'">
						<h1>벨트</h1> <img src="${path}/views/img/IconHealthGoodsBelt.png" style="width: 150px; height: 150px"/>
					</td>
					<td onclick="location.href='healthgoods?cmd=selectGloves'">
						<h1>장갑</h1> <img src="${path}/views/img/IconHealthGoodsGloves.png" style="width: 150px; height: 150px"/>
					</td>
				</tr>
			</table>
		</article>
		
		
		<!--헬스식품 카테고리-->
		<article class="category" id="s3">
			<table>
				<th colspan="4">헬스식품 카테고리</th>
				<tr>
					<td onclick="location.href='healthfood?cmd=healthFoodList'">
						<h1>전체</h1> <img src="${path}/views/img/IconHealthFoodAll.png" style="width: 200px; height: 200px"/>
					</td>
					<td onclick="location.href='healthfood?cmd=selectFood'">
						<h1>음식</h1> <img src="${path}/views/img/IconHealthFoodSalad.png" style="width: 200px; height: 200px"/>
					</td>
					<td onclick="location.href='healthfood?cmd=selectCafe'">
						<h1>음료</h1> <img src="${path}/views/img/IconHealthFoodCafe.png" style="width: 200px; height: 200px"/>
					</td>
				</tr>
			</table>
		</article>		
		
		
		<!--영양제 카테고리-->
		<article class="category" id="s4">
			<table>
				<th colspan="4">영양제 카테고리</th>
				<tr>
					<td onclick="location.href='nutrients?cmd=list'">
						<h1>모든 영양제</h1> <img id="allnutrientsImg" src="${path}/views/img/allList.png" />
					</td>
					<td onclick="location.href='nutrients?cmd=vitaminList'">
						<h1>비타민</h1> <img src="${path}/views/img/vitamin.png" />
					</td>
					<td onclick="location.href='nutrients?cmd=proteinList'">
						<h1>헬스 보충제</h1> <img src="${path}/views/img/protein.png" />
					</td>
					<td onclick="location.href='nutrients?cmd=dietList'">
						<h1>다이어트 보충제</h1> <img src="${path}/views/img/diet.png" />
					</td>
				</tr>
			</table>
		</article>
		
		
		<!--커뮤니티 카테고리-->
		<article class="category" id="s7">
			<table>
				<th colspan="2">문의</th>
				<tr>
					<td>
						<a href="${path}/views/jsp/qna/FQA.jsp">
						<h1>FQA</h1> <img src="${path}/views/img/vitamin.png" />
						</a>
					</td>
					<td>
						<a href="board?cmd=list">
						<h1>1:1 문의</h1> <img src="${path}/views/img/protein.png" />
						</a>
					</td>
				</tr>
			</table>
		</article>
		
	</div> <!-- end selectList -->



	<div id="nutrientsListDiv">
	
		<table>
			<tr>
				<th>이름</th>
				<th>가격</th>
				<th>이미지</th>
				<th>상세설명</th>
			</tr>

			<c:forEach var="healthGoodsList" items="${ healthGoodsList }">
				<tr id="${healthGoodsList.healthGoodsId}" title="${healthGoodsList.healthGoodsName}의 상세 페이지 가기"
					onclick="location.href='healthgoods?cmd=healthGoodsDetail&healthGoodsId=${healthGoodsList.healthGoodsId}'" >
					<td>${healthGoodsList.healthGoodsName}</td>
					<td>${healthGoodsList.healthGoodsPrice }</td>
					<td><img src="${healthGoodsList.healthGoodsImg }" /></td>
					<td>${healthGoodsList.healthGoodsDetail }</td>
				</tr>
			</c:forEach>
		</table>
		
	</div> <!-- end nutrientsListDiv -->

	<footer>회사 이름, 대표 이름 등등</footer>
</body>
</html>