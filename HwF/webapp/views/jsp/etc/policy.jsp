<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link rel="stylesheet" type="text/css"
	href="${path}/views/css/header.css" />
<link rel="stylesheet" type="text/css"
	href="${path}/views/css/MainCss.css" />
<link rel="stylesheet" type="text/css"
	href="${path}/views/css/policy.css" />
<link rel="stylesheet" type="text/css"
	href="${path}/views/css/footer.css" />
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${path}/views/js/all.js"></script>
<title>policy</title>

</head>
<body>
	<!-- header -->
	<header>
		<div id="headerFirstDiv">
			<div>
				<a href="javascript:location.href='${path}/Main.jsp'"><img
					src="${path}/views/img/logo.png" /></a>
			</div>
			<div>BE NATURAL</div>
			<div id="loginimg">
				<a onclick="location.href='${path}/cart?cmd=gobasket'"><img
					src="${path}/views/img/basketIcon.png" title="장바구니" /></a> <a
					onclick="location.href='${path}/Member?cmd=login'"><img
					src="${path}/views/img/LoginIMG.png" title="로그인 / 마이페이지" /></a>
			</div>
		</div>

		<nav>
			<form action="${path}/search?cmd=searching" method="post">
				<p>
					<input type="hidden" name="column"> <input type="text"
						name="keyvalue" value="" placeholder="Search">
				</p>
			</form>

			<table>
				<tr>
					<td id="1" onclick="change(this.id)">Home</td>
					<td id="2" onclick="change(this.id)">HealthGoods</td>
					<td id="3" onclick="change(this.id)">HealthFood</td>
					<td id="4" onclick="change(this.id)">HealthNutrients</td>
					<td id="5" onclick="location.href='${path}/Member?cmd=surveylist'">Survey</td>
					<td id="6" onclick="location.href='${path}/Member?cmd=inbodylist'">InbodyTest</td>
					<td id="7" onclick="change(this.id)">Community</td>
				</tr>
			</table>
		</nav>
	</header>

	<div id="selectList">

		<!--이달의 메뉴 추천 & 헬스장 운동법 소개-->
		<article class="MonthMenu" id="s1">
			<img src="${path}/views/img/getMuscle.jpg" />
			<div>
				<table>
					<th colspan="2">이달의 HOT & SALE 메뉴</th>
					<tr>
						<td onclick="location.href='${path}/nutrients?cmd=nutrientsDetail30001'">
							<img
							src="https://img.danawa.com/prod_img/500000/426/012/img/2012426_1.jpg?shrink=330:330&_v=20210817132717"
							width="200" , height="200" />
							<h4>고려은단 비타민C 1000 600정</h4>
						</td>
						<td onclick="location.href='${path}/nutrients?cmd=nutrientsDetail30002'">
							<img
							src="https://img.danawa.com/prod_img/500000/444/243/img/6243444_1.jpg?shrink=330:330&_v=20200626121658"
							width="200" , height="200" />
							<h4>코스트코 커클랜드 슈퍼 B-컴플렉스 500정</h4>
						</td>
					</tr>
					<tr>
						<td onclick="location.href='${path}/nutrients?cmd=nutrientsDetail30003'">
							<img
							src="https://img.danawa.com/prod_img/500000/178/261/img/5261178_1.jpg?shrink=330:330&_v=20200618170729"
							width="200" , height="200" />
							<h4>BSN 신타6 초콜렛 밀크쉐이크 2.27kg</h4>
						</td>
						<td onclick="location.href='${path}/nutrients?cmd=nutrientsDetail30007'">
							<img
							src="https://img.danawa.com/prod_img/500000/566/871/img/17871566_2.jpg?shrink=500:500&_v=20220920155658"
							width="200" , height="200" />
							<h4>비상썬라이즈 경성건강원 수국잎 열수 추출물 분말 110g</h4>
						</td>
					</tr>
				</table>

				<table id="healthintro">
					<th colspan="2">헬스장 소개</th>
					<tr>
						<td onclick="location.href='${path}/views/jsp/etc/introduce.jsp'">
							<img
							src="https://contents.hiltonhotels.jp/ko/h/selhi/hotel_service_20191209111241_main_sp.jpg"
							width="640" , height="200">
						</td>
					</tr>

					<th>운동법 소개</th>
					<tr>
						<td><iframe width="640" height="300"
								src="https://www.youtube.com/embed/TY0HF4SMzhU?autoplay=1&mute=1"
								title="YouTube video player" frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen> </iframe></td>
					</tr>
				</table>
			</div>
		</article>


		<!--헬스용품 카테고리-->
		<article class="category" id="s2">
			<table>
				<th colspan="4">헬스용품 카테고리</th>
				<tr>
					<td onclick="location.href='${path}/healthgoods?cmd=healthGoodsList'">
						<h1>전체</h1> <img src="${path}/views/img/IconHealthGoods.png"
						style="width: 150px; height: 150px" />
					</td>
					<td onclick="location.href='${path}/healthgoods?cmd=selectDumbbell'">
						<h1>운동용품</h1> <img
						src="${path}/views/img/IconHealthGoodsDumbbell.png"
						style="width: 150px; height: 150px" />
					</td>
					<td onclick="location.href='${path}/healthgoods?cmd=selectBelt'">
						<h1>벨트</h1> <img src="${path}/views/img/IconHealthGoodsBelt.png"
						style="width: 150px; height: 150px" />
					</td>
					<td onclick="location.href='${path}/healthgoods?cmd=selectGloves'">
						<h1>장갑</h1> <img src="${path}/views/img/IconHealthGoodsGloves.png"
						style="width: 150px; height: 150px" />
					</td>
				</tr>
			</table>
		</article>


		<!--헬스식품 카테고리-->
		<article class="category" id="s3">
			<table>
				<th colspan="4">헬스식품 카테고리</th>
				<tr>
					<td onclick="location.href='${path}/healthfood?cmd=healthFoodList'">
						<h1>전체</h1> <img src="${path}/views/img/IconHealthFoodAll.png"
						style="width: 200px; height: 200px" />
					</td>
					<td onclick="location.href='${path}/healthfood?cmd=selectFood'">
						<h1>음식</h1> <img src="${path}/views/img/IconHealthFoodSalad.png"
						style="width: 200px; height: 200px" />
					</td>
					<td onclick="location.href='${path}/healthfood?cmd=selectCafe'">
						<h1>음료</h1> <img src="${path}/views/img/IconHealthFoodCafe.png"
						style="width: 200px; height: 200px" />
					</td>
				</tr>
			</table>
		</article>


		<!--영양제 카테고리-->
		<article class="category" id="s4">
			<table>
				<th colspan="4">영양제 카테고리</th>
				<tr>
					<td onclick="location.href='${path}/nutrients?cmd=list'">
						<h1>모든 영양제</h1> <img id="allnutrientsImg"
						src="${path}/views/img/allList.png" />
					</td>
					<td onclick="location.href='${path}/nutrients?cmd=vitaminList'">
						<h1>비타민</h1> <img src="${path}/views/img/vitamin.png" />
					</td>
					<td onclick="location.href='${path}/nutrients?cmd=proteinList'">
						<h1>헬스 보충제</h1> <img src="${path}/views/img/protein.png" />
					</td>
					<td onclick="location.href='${path}/nutrients?cmd=dietList'">
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
					<td><a href="${path}/views/jsp/qna/FQA.jsp">
							<h1>FQA</h1> <img src="${path}/views/img/IconFQA.png" />
					</a></td>
					<td><a href="${path}/board?cmd=list">
							<h1>1:1 문의</h1> <img src="${path}/views/img/IconOneToOne.png" />
					</a></td>
				</tr>
			</table>
		</article>

	</div>
	<!-- end selectList -->
	<div id="nutrientsListDiv">
		<div id="containner" class="fqa">
			<div id="location">
				<h4>Home > 이용약관</h4>
			</div>
			<div id="title_fqa">이용 약관</div>
			<input type="radio" name="accordion" id="answer1"> <label
				for="answer1"><p>헬스장 표준 약관</p> <i class="fas fa-angle-down"></i>
			</label>
			<div class="info">
				<ul>
					<div>헬스장 표준 약관</div>
					<p></p>
					<div id="heatlhpolicyNum">"표준약관 제10048호</div>
					<p></p>

					<div>제1조(목적) 이 약관은 ○○체력단련장과 체력단련장이 제공하는 시설 및 서비스를 이용하는 자(이하
						‘이용자’라 합니다) 사이에 체결된 계약에 따른 권리․의무에 관한 사항을 정함을 목적으로 합니다.</div>
					<div>제2조(적용대상) 이 약관은 ○○체력단련장을 이용하는 모든 이용자에게 적용합니다.</div>
					<div>제3조(이용계약 및 약관 교부)</div>
					<div>① 이용자는 체력단련장(이하 ‘사업자’라 합니다)이 정한 절차에 따라 이용 신청을 하고 이용료를
						납부하여야 합니다.</div>
					<div>② 사업자는 체력단련장 이용신청을 승낙할 경우 이용자에게 이용증과 약식 약관(이용증 이면에 첨부)을
						교부하여야 합니다.</div>
					<div>③ 사업자는 제2항의 약식약관의 교부에 관계없이 이용자가 요구할 경우 약관의 사본을 교부하여야
						합니다.</div>
					<div>제4조(게시․설명의무)</div>
					<div>① 사업자는 이용자가 용이하게 볼 수 있는 장소에 다음 사항을 게시하여야 합니다.</div>
					<div>1. 시간별 프로그램 내용 및 정원</div>
					<div>2. 지도강사의 인적사항</div>
					<div>3. 강습의 변경</div>
					<div>4. 이용료</div>
					<div>5. 약관내용</div>
					<div>6. 소지품 보관시 유의 사항 등</div>
					<div>7. 이용자 안전수칙 등 기타 필요사항</div>
					<div>② 사업자는 이용자가 체력단련장 시설 및 기구를 안전하게 이용할 수 있도록 이용방법 및 주의사항 설명
						등 선량한 관리자로서 의무를 다하여야 합니다.</div>
					<div>제5조(이용증 제시)</div>
					<div>① 이용자는 사업자가 이용증 제시를 요구할 경우 이용증을 제시하여야 합니다.</div>
					<div>② 이용자는 이용증을 분실하였을 경우 지체없이 사업자에게 그 사실을 통지 하고 재교부를 받아야
						합니다.</div>
					<div>제6조(이용신청 철회)</div>
					<div>① 이용자가 체력단련장 이용을 할부계약으로 신청한 경우 신청일로부터 7일 이내 서면으로, 방문사원
						권유로 신청한 경우에는 신청일로부터 14일 이내에 이용신청을 철회할 수 있습니다. 단 신청일에 계약서(또는 약관)을
						교부받지 못한 경우 이용 개시일을 기준으로 합니다.</div>
					<div>② 제1항의 경우 사업자는 ‘할부거래에관한법률’ 제6조, ‘방문판매등에관한법률’ 제9조에 따른
						원상회복의 의무를 집니다.</div>
					<div>제7조(이용 연기)</div>
					<div>① 이용자는 체력단련장 이용 전 또는 이용 중 연기가 필요한 경우 사업자와 협의하여 이용시기를 연기할
						수 있습니다.</div>
					<div>② 제1항의 경우에 이용자는 연기신청서를 사업자에게 제출하여야 합니다.</div>

					<div>③ 제2항의 신청을 받은 사업자는 특별한 사정이 없는 한 승낙하여야 합니다.</div>
					<div>제8조(계약의 해제․해지)</div>
					<div>① 이용자는 다음 각 호의 사유가 있을 경우 계약을 해제․해지할 수 있습니다.</div>
					<div>1. 체력단련장 시설 이용 및 강습 등에 관한 계약내용 또는 광고내용이 실제와 다른 경우</div>
					<div>2. 체력단련기기 및 시설의 고장으로 정상적인 이용이 곤란한 경우</div>
					<div>3. 이전․휴업․폐업․정원초과 등으로 체력단련장 이용이 곤란한 경우</div>
					<div>4. 기타 사업자의 책임 있는 사유로 체력단련장 이용이 곤란한 경우</div>
					<div>② 계약을 해제․해지하는 경우 사업자와 이용자는 다음과 같은 조건으로 계약을 해제․해지할 수
						있습니다.</div>
					<div>[이용개시일 이전 계약 해제․해지]</div>
					<div>1. 제1항 각 호의 사유로 인하여 이용자가 계약을 해제․해지하는 경우 사업자는 총 이용금액(‘매
						이용 계약시 이용료로 납입한 총액’으로 이하 같음) 전액과 총 이용금액의 10%에 해당하는 금액을 이용자에게
						환불합니다.</div>
					<div>2. 이용자 사정으로 계약을 해제․해지하는 경우 사업자는 총 이용금액의 10%에 해당하는 금액을
						공제한 후 이용자에게 환불합니다.</div>
					<div>[이용개시일 이후 계약 해제․해지]</div>
					<div>1. 제1항 각 호의 사유로 이용자가 계약을 해제․해지하는 경우 사업자는 총 이용금액에서 해지일까지
						이용금액을 일할 계산하여 공제하고 난 후의 금액과 총 이용금액의 10%에 해당하는 금액을 이용자에게 환불합니다.</div>
					<div>2. 이용자 사정으로 계약을 해제․해지하는 경우 사업자는 총 이용금액을 기준으로 해지일까지 이용일수에
						해당하는 금액과 총 이용금액의 10%에 해당하는 금액을 공제한 후 이용자에게 환불합니다.</div>
					<div>③ 계약의 해제․해지에도 불구하고 사업자가 제공한 사은품은 반환 또는 환불하지 않습니다.</div>
					<div>제9조(손해배상)</div>
					<div>① 체력단련장의 시설물에 의해 이용자에게 신체상의 피해가 발생한 경우 사업자는 그 손해를 배상하여야
						합니다. 다만 그 손해가 불가항력으로 인하여 발 생한 경우 또는 그 손해의 발생이 이용자의 고의 또는 과실로 인한
						경우에는 그 배상의 책임이 경감 또는 면제됩니다.</div>
					<div>② 이용자의 고의․중대한 과실로 체력단련기기의 파손 등 체력단련장에 손해가 발생한 경우 이용자는 이를
						배상하여야 합니다.</div>
					<div>제10조(소지품의 보관)</div>
					<div>① 이용자는 사업자에게 자신이 휴대한 소지품의 보관을 요구할 수 있습니다.</div>
					<div>② 제1항의 요구를 받은 사업자는 이용자의 소지품을 안전하게 보관한 후 반환하여야 합니다.</div>
					<div>③ 제1항에 의해 보관한 소지품이 멸실 또는 훼손된 경우 사업자는 불가항력으로 인한 것임을 입증하지
						못하면 그 손해를 배상하여야 합니다.</div>
					<div>④ 이용자가 보관을 의뢰하지 않은 소지품도 사업자측의 책임있는 사유로 멸실 또는 훼손된 경우 사업자는
						그 손해를 배상하여야 합니다.</div>
					<div>⑤ 이용자는 휴대품이 화폐, 유가증권 기타 고가물인 경우 그 종류와 가액을 명시하여 사업자에게 보관을
						의뢰하여야 합니다. 사업자는 이용자의 요구에 응하여 해당 물품을 안전하게 보관하여야 합니다.</div>
					<div>⑥ 제5항에 의해 이용자가 보관을 의뢰하지 않은 고가물이 멸실 또는 훼손된 경우 사업자는 제4항에
						의거 손해배상 책임을 집니다.</div>
					<div>⑦ 기타 이용자의 소지품 보관에 관한 사항은 상법 제151조 이하의 규정에 의합니다.</div>
					<div>제11조(면책조항)</div>
					<div>① 사업자는 천재지변 기타 불가항력의 사유로 체력단련장 이용이 곤란한 때에는 그 사유가 종료될 때까지
						이용을 중단시킬 수 있습니다.</div>
					<div>② 제1항의 경우에 이용자는 계약을 해지할 수 있다. 단, 이 경우 이용자는 사업자에 대해 손해배상을
						청구할 수 없습니다.</div>
					<div>③ 이용자가 제1항을 이유로 계약을 해지하는 경우 사업자는 총 이용금액에서 이용을 중단한 날까지 일할
						계산하여 공제하고 난 후의 금액을 환불합니다.</div>
					<div>제12조(사물함 열쇠 반환)</div>
					<div>① 이용자는 체력단련장 이용 종료와 동시에 사물함열쇠를 사업자에게 반환하여야 합니다.</div>
					<div>② 이용자가 체력단련장 이용종료일에 사물함 열쇠를 반환하지 않을 경우 사업자는 열쇠 반환일까지 사물함
						사용료를 청구할 수 있습니다.</div>
					<div>③ 체력단련장 이용이 종료한 날로부터 1달이 경과하여도 이용자가 사물함 열쇠를 반환하지 않을 경우
						사업자는 사물함을 회수할 수 있습니다.</div>
					<div>제13조(기타)</div>
					<div>① 이 약관에서 규정하지 않은 사항은 관계법령 및 거래 관행을 고려하여 신의칙에 따라 사업자와
						이용자가 합의하여 해결합니다.</div>
					<div>② 이 약관과 관련된 소송의 관할법원은 민사소송법상의 관련규정에 의합니다.</div>
					<p></p>
					<div>
						<별 첨>
					</div>
					<div>체력단련장(헬스장) 이용 약식약관</div>
					<p></p>
					<div>제1조(이용신청 철회) 이용신청을 할부계약으로 한 경우는 7일 이내, 방문사원을 통하여 한 경우는
						14일 이내 철회할 수 있습니다</div>
					<div>제2조(이용연기) 이용자는 체력단련장 이용 전 또는 이용 중 연기가 필요한 경우 사업자와 협의하여
						이용시기를 연기할 수 있습니다.</div>
					<div>제3조(계약의 해제․해지) 이용자는 계약내용 또는 광고내용이 사실과 다르거나, 기기․시설고장․정원초과
						등인 경우 계약을 해제․해지할 수 있습니다.</div>
					<p></p>
					<div>
						<계약해제 ․ 해지조건>
					</div>
					<p></p>
					<div>사유 / 이용 개시일 이전 / 이용 개시일 이후 / 사업자 / 귀책</div>
					<p></p>
					<div>총 이용금액 전액과 총 이용금액의 10%를 환불</div>
					<p></p>
					<div>총 이용금액에서 해지일까지 이 용금액을 일할계산하여 공제하고 난 후의 금액과 총 이용금액의 10%를
						환불</div>
					<div>이용자 / 귀책</div>
					<div>총 이용금액에서 10%에 해당하는 금액을 공제한 후 환불</div>
					<p></p>
					<div>총 이용금액에서 해지일까지 이 용일수에 해당하는 금액과 총 이용금액의 10%를 공제한 후 환불</div>
					<div>※ 총 이용금액 : 매 이용계약시 이용료로 납입한 금액</div>
					<p></p>
					<div>제4조(손해배상) 체력단련장의 시설물에 의하여 이용자 신체에 피해가 발생한 경우 사업자는 이용자의
						고의․과실이 없는 한 손해를 배상합니다.</div>
					<div>제5조(소지품의 보관) 사업자는 이용자의 소지품을 안전하게 보관하여야 하며 보관을 의뢰하지 않은
						소지품도 사업자의 책임있는 사유로 멸실 또는 훼손된 경우 그 손해를 배상합니다.</div>
				</ul>
			</div>
			<p></p>
			<p></p>

			<input type="radio" name="accordion" id="answer2"> <label
				for="answer2">
				<p>온라인 이커머스 이용 표준약관</p> <i class="fas fa-angle-down"></i>
			</label>
			<div class="heatlhpolicy">
				<ul>
					온라인 이커머스 이용 표준약관
					<p></p>
					<div>제1장 총칙</div>
					<div>제1조(목적)</div>
					<div>이 약관은 주식회사 000(이하 “회사”)가 운영하는 사이버 몰에서 제공하는 인터넷 관련 서비스를
						이용함에 있어 사이버 몰과 “이용자”의 권리․의무 및 책임사항을 규정함을 목적으로 합니다.</div>
					<div>제2조(정의)</div>
					<div>① “몰”이란 회사가 재화 또는 용역(이하 “재화 등”)을 “이용자”에게 제공하기 위하여 컴퓨터 등
						정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 사이버몰을 말합니다.</div>
					<div>② “이용자”란 “몰”에 접속하여 이 약관에 따라 “회사”가 제공하는 서비스를 받는 회원 및 비회원을
						말합니다.</div>
					<div>③ “회원”이라 함은 “몰”에 회원 가입을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할
						수 있는 자를 말합니다.</div>
					<div>④ “비회원”이란 회원으로 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.</div>
					<div>⑤ “판매자”란 “회사”와 “인터넷 쇼핑몰 입점 계약”을 체결하고 “몰”에서 재화 등을 판매하는 자를
						말합니다.</div>
					<div>제3조 (약관 등의 명시와 설명 및 개정)</div>
					<p></p>
					<div>① “회사”는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수
						있는 곳의 주소를 포함), 전화번호․모사전송번호․전자우편주소, 사업자등록번호, 통신판매업 신고번호,
						개인정보관리책임자등을 “이용자”가 쉽게 알 수 있도록 ”몰”의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의
						내용은 “이용자”가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.</div>
					<div>② “회사”는 “이용자”가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중
						청약철회․배송책임․환불조건 등과 같은 중요한 내용을 “이용자”가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을
						제공하여 “이용자”의 확인을 구하여야 합니다.</div>
					<div>③ “회사”는 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」,
						「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한
						법률」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수
						있습니다.</div>
					<div>④ “회사”는 이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 “몰”의
						초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지하고 “이용자”에게 통지합니다. 다만, “이용자”에게
						불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지 및 통지합니다. 이 경우
						"회사“는 개정 전 내용과 개정 후 내용을 명확하게 비교하여 “이용자”가 알기 쉽도록 표시합니다.</div>
					<div>⑤ “이용자”는 개정 약관이 게시되거나 통지된 후부터 변경되는 약관의 시행일 전의 영업일까지 개정 전
						약관조항에 따라 체결된 계약을 해지할 수 있고, 약관의 개정내용에 대하여 이의를 제기하지 아니하는 경우에는 약관의
						개정을 승인한 것으로 봅니다.</div>
					<div>⑥ 회사는 제공하는 서비스 내의 개별 서비스에 대한 별도의 약관 또는 이용조건(이하 “타 약관”이라
						한다)을 둘 수 있으며, 이 약관의 동의와는 별개로 회원에게 타 약관에 대한 동의를 받은 후 타 약관을 적용합니다. 이
						경우 타 약관은 이 약관에 우선합니다.</div>
					<div>⑦ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한
						법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는
						상관례에 따릅니다.</div>
					<p></p>
					<div>제4조(서비스의 제공 및 변경)</div>
					<div>① “회사”는 다음과 같은 업무를 수행합니다.</div>
					<div>1. 재화 등의 거래 및 정보 제공을 위한 플랫폼의 운영 및 개발 업무</div>
					<div>2. 재화 등의 정보 검색 지원 업무</div>
					<div>3. 재화 등의 구매 관련 지원 업무</div>
					<div>4. 대금의 결제 및 정산 관련 업무</div>
					<div>5. 기타 전자상거래와 관련하여 “회사”가 정하는 업무</div>
					<div>② “회사”는 재화 등의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해
						제공할 재화 등의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의
						재화 등의 내용을 게시한 곳에 즉시 공지합니다.</div>
					<div>③ “몰”이 제공하기로 “이용자”와 계약을 체결한 서비스의 내용을 재화 등의 품절 또는 기술적 사양의
						변경 등의 사유로 변경할 경우에는 그 사유를 “이용자”에게 통지 가능한 주소로 즉시 통지합니다.</div>
					<div>④ 제3항에 따라 서비스의 내용을 변경하여 “이용자”에게 손해가 발생한 경우 “회사”는 그 손해를
						배상합니다. 다만, “회사”가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.</div>
					<p></p>
					<div>제5조(서비스의 중단)</div>
					<div>① “회사”는 컴퓨터 등 정보통신설비의 보수점검․교체 및 고장, 통신의 두절 등의 사유가 발생한
						경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.</div>
					<div>② “회사”는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 “이용자” 또는 제3자가
						입은 손해에 대하여 배상합니다. 단, “회사”가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.</div>
					<p></p>
					<div>제6조(회원가입)</div>
					<div>① “이용자”는 “회사”가 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는
						의사표시를 함으로서 회원가입을 신청합니다.</div>
					<div>② “회사”는 제1항과 같이 회원으로 가입할 것을 신청한 “이용자” 중 다음 각 호에 해당하지 않는
						한 회원으로 등록합니다.</div>
					<div>1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만
						제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 “몰”의 회원재가입 승낙을 얻은 경우에는 예외로 합니다.</div>
					<div>2. 등록 내용에 허위, 기재 누락, 오기가 있는 경우</div>
					<div>3. 기타 가입신청자를 회원으로 등록하는 것이 “몰”의 기술상 현저히 지장이 있다고 판단되는 경우</div>
					<div>③ 회원가입계약의 성립 시기는 “회사”의 승낙이 가입 신청자에게 도달한 시점으로 합니다.</div>
					<div>④ “회원”은 회원가입 시 등록한 사항에 변경이 있는 경우, 일정 기간 이내에 “회사”에 대하여
						회원정보 수정 등의 방법으로 그 변경사항을 알려야 합니다.</div>
					<div>⑤ “회사”는 『영화 및 비디오물의 진흥에 관한 법률』, 『청소년 보호법』 및 『화학물질 관리법』 등
						관련 법령에 따른 등급 및 연령제한 준수를 위하여 “이용자”의 서비스 이용 또는 상품 등 구매를 제한하거나,
						“이용자”에게 나이 및 본인 확인 등의 절차를 요구할 수 있습니다.</div>
					<p></p>
					<div>제7조(회원 탈퇴 및 이용의 제한)</div>
					<div>① “회원”은 “회사”에 언제든지 탈퇴를 요청할 수 있으며 “회사”는 즉시 회원탈퇴를 승낙합니다.</div>
					<div>② “회원”이 다음 각 호의 사유에 해당하는 경우, “회사”는 회원자격을 제한 및 정지시킬 수
						있습니다.</div>
					<div>1. 가입 신청 시에 허위 내용을 등록한 경우</div>
					<div>2. “몰”을 이용하여 구입한 재화 등의 대금, 기타 “몰” 이용에 관련하여 “회원”이 부담하는
						채무를 기일에 지급하지 않는 경우</div>
					<div>3. 다른 사람의 “몰” 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우</div>
					<div>4. “몰”을 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우</div>
					<div>③ “회사”가 회원 자격을 제한․정지시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그
						사유가 시정되지 아니하는 경우 “회사”는 회원자격을 상실시킬 수 있습니다.</div>
					<div>④ “회사”가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 “회원”에게 이를
						통지하고, 회원등록 말소 전 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.</div>
					<div>⑤ 제2항부터 제4항까지의 규정에도 불구하고, 다음의 각 호 중 어느 하나에 해당하는 경우 “회사”는
						그 사실을 알게 된 날로부터 3일 내에 “회원” 및 “이용자”에게 그 위반 사실을 통보한 후 회원자격을 상실시키거나
						“회사”의 서비스 이용을 영구히 제한할 수 있습니다.</div>
					<div>1. 공급받은 재화 등을 고의로 훼손하여 청약철회 등을 요구하는 경우</div>
					<div>2. 타인의 명의나 정보를 도용하여 서비스를 이용하는 경우</div>
					<div>3. 여신전문금융업법 등 관련 법령을 위반하여 비정상적인 결제를 하거나 기타 “회사”의 시스템을
						비정상적으로 이용하는 경우</div>
					<div>4. 정당하지 않은 사유로 주문의 취소, 반품, 환불 등을 반복하여 “회사”의 업무를 방해하는 경우</div>
					<div>5. 범죄 또는 현금화 목적 등으로 대금 결제 방식을 악용하는 행위</div>
					6. “회사”의 직원에게 폭언, 폭행 등 적정 범위를 벗어나 신체적, 정신적 고통을 유발할 수 있는 행위를 하는 경우
					<div>7. 그 밖에 통상적이지 않은 방법으로 “몰”을 이용하여 “회사”의 업무와 다른 “회원” 및
						“이용자”의 서비스 이용을 방해하여 그 권리와 이익을 현저히 침해하는 경우</div>
					<p></p>
					<div>제8조(회원에 대한 통지)</div>
					<div>① “회사”는 “회원”에 대한 통지를 하는 경우, 회원이 “회사”와 미리 약정하여 지정한 전자우편
						주소로 할 수 있습니다. “회원”은 자신이 지정한 전자우편 주소에 변경이 생긴 경우 이를 “몰”에서 정한 방법 및
						절차에 따라 이를 수정하여야 하며, “회원”이 이를 게을리하여 “회사”가 원래의 전자우편 주소로 통지를 한 경우 그러한
						통지는 유효하게 도달된 것으로 봅니다.</div>
					<div>② “회사”는 불특정다수 회원에 대한 통지의 경우 1주일 이상 “몰” 게시판에 게시함으로서 개별
						통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를
						합니다.</div>
					<p></p>
					<div>제9조(“회사“의 의무)</div>
					<p></p>
					<div>① “회사”는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는
						바에 따라 지속적이고, 안정적으로 재화 등을 제공하는데 최선을 다하여야 합니다.</div>
					<div>② “회사”는 “이용자”가 안전하게 인터넷 서비스를 이용할 수 있도록 “이용자”의 개인정보(신용정보
						포함)보호를 위한 보안 시스템을 갖추어야 합니다.</div>
					<div>③ “회사”는 회원으로부터 제기되는 의견이나 불만이 객관적으로 정당하다고 인정될 경우 회원의 불만을
						해결하기 위해 노력하며, 그에 따른 보상을 할 수 있습니다.</div>
					<div>④ “회사”는 “이용자”가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.</div>
					<p></p>
					<div>제10조(회원의 ID 및 비밀번호에 대한 의무)</div>
					<div>① ID와 비밀번호에 관한 관리책임은 “회원”에게 있습니다.</div>
					<div>② “회원”은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.</div>
					<div>③ “회원”이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로
						“회사”에 통보하고 “회사”의 안내가 있는 경우에는 그에 따라야 합니다.</div>
					<p></p>
					<div>제11조(“이용자”의 의무)</div>
					<div>① 이용자는 이 약관의 규정, 회사의 이용정책, 이용안내 사항 및 관련 법령 등을 준수하여야 합니다.
					</div>
					<div>②“이용자”는 다음 각 호의 행위를 하여서는 안 됩니다.</div>
					<div>1. 회원 가입의 신청 또는 변경 시 허위 내용을 등록하는 행위</div>
					<div>2. 타인의 정보를 도용하는 행위</div>
					<div>3. “몰”에 게시된 정보를 무단으로 변경하는 행위</div>
					<div>4. “회사”가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등을 송신 또는 게시하는 행위</div>
					<div>5. “회사” 또는 제3자의 저작권 등 지적재산권을 침해하는 행위</div>
					<div>6. “회사” 또는 제3자의 명예를 손상시키거나 업무를 방해하는 행위</div>
					<div>7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 “몰"에 공개 또는
						게시하는 행위</div>
					<p></p>
					<div>제12조(대금 지급방법)</div>
					<div>“몰”에서 구매한 재화 등의 대금 지급은 다음 각 호의 어느 하나의 방법으로 할 수 있습니다. 단,
						“회사”가 필요로 하는 경우 재화 등의 대금 지급 방법을 각 호의 방법 중 “회사”가 정한 방법으로 결정할 수
						있습니다. “회사”는 “이용자”의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도 추가하여 징수할 수
						없습니다.</div>
					<div>1. 폰뱅킹, 인터넷뱅킹, 메일 뱅킹 등의 각종 계좌이체</div>
					<div>2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제</div>
					<div>3. 온라인무통장입금</div>
					<div>4. 전자화폐에 의한 결제 (휴대폰 결제, 온라인 결제서비스를 통한 결제 등)</div>
					<div>5. 수령 시 대금지급</div>
					<div>6. 000적립금 등 “몰”이 지급한 적립금에 의한 결제</div>
					<div>7. “몰”과 계약을 맺었거나 “몰”이 인정한 상품권에 의한 결제</div>
					<div>8. 기타 전자적 지급 방법에 의한 대금 지급 등</div>
					<p></p>
					<div>제13조(구매안전서비스의 제공)</div>
					<div>① “회사”는 “이용자”가 재화 등을 공급받기 전에 제12조제2호 및 제5호을 제외한 방법으로 재화
						등의 대금을 지급하는 경우, 해당 결제 대금을 제3자에게 예치하고 공급이 완료된 후 “회사” 또는 “판매자”에게
						지급하도록 하는 ‘구매안전 서비스’를 제공합니다.</div>
					<div>② “이용자”는 재화 등을 거래한 날부터 4영업일 이내에 그 사실을 “회사”에 통보해야 하며,
						4영업일이 지나도록 정당한 사유 없이 거래한 사실을 통보하지 않는 경우 예치된 대금은 “회사”가 지정한 정산대행업체에게
						지급될 수 있습니다.</div>
					<p></p>
					<div>제14조(000 적립금)</div>
					<div>① "회사"는 "회원"이 구매 활동 · 구매후기 작성 · 이벤트 참여를 하거나, 출고지연 · 주문 후
						품절 · 청약철회 등의 처리 지연을 당한 경우 ”회사”가 정한 기준에 따라 일정한 "000 적립금"을 부여할 수
						있습니다.</div>
					<div>② "회원"은 “몰”에서 "상품"을 구매 시 다른 결제 수단과 함께 “000 적립금”을 사용할 수
						있으며, “000 적립금”은 최대 상품금액의 7%까지 사용 가능합니다.</div>
					<div>③ "회사"는 "000 적립금"의 적립기준, 사용방법, 사용기한 및 제한 등을 상품, 회원등급 및
						지급 사유 등에 따라 다르게 정할 수 있으며, "몰"의 화면에 별도로 게시하거나 통지합니다.</div>
					<div>④ “000 적립금”은 1) 사용기한이 먼저 도래하는 순서 2) 사용기한이 동일한 경우 적립일자가
						빠른 순서대로 사용됩니다.</div>
					<div>⑤ "회원"은 "000 적립금"을 제3자에게 또는 다른 아이디로 양도할 수 없으며 유상으로 거래하거나
						현금으로 전환할 수 없습니다.</div>
					<div>⑥ "회원"이 "회사"가 승인하지 않은 방법 또는 허위 정보 제공, 본 약관에 위배되는 등의 부정한
						방법으로 "000 적립금"을 획득하거나, 부정한 목적이나 용도로 "000 적립금"을 사용하는 경우, “회사”는 "000
						적립금"의 사용을 제한하거나 “회사”가 정한 방법으로 회수할 수 있으며, "000 적립금"을 사용한 구매신청을
						취소하거나 "회원" 자격을 정지할 수 있습니다.</div>
					<div>⑦ "회원" 탈퇴 시 사용하지 않은 "000 적립금"은 즉시 소멸되며, 탈퇴 후 재가입하더라도 소멸된
						"000 적립금"은 복구되지 아니합니다.</div>
					<p></p>
					<div>제15조(개인정보보호)</div>
					<p></p>
					<div>① “회사”는 “이용자”의 개인정보 수집시 서비스제공을 위하여 필요한 범위에서 최소한의 개인정보를
						수집합니다.</div>
					<div>② “회사”는 회원가입시 구매계약이행에 필요한 정보를 미리 수집하지 않습니다. 다만, 관련 법령상
						의무이행을 위하여 구매계약 이전에 본인확인이 필요한 경우로서 최소한의 특정 개인정보를 수집하는 경우에는 그러하지
						아니합니다.</div>
					<div>③ “회사”는 “이용자”의 개인정보를 수집•이용하는 때에는 “이용자”에게 그 목적을 고지하고 동의를
						받습니다.</div>
					<div>④ “회사”는 수집된 개인정보를 목적 외의 용도로 이용할 수 없으며, 새로운 이용목적이 발생한 경우
						또는 제3자에게 제공하는 경우에는 이용•제공단계에서 “이용자”에게 그 목적을 고지하고 동의를 받습니다. 다만, 관련
						법령에 달리 정함이 있는 경우에는 예외로 합니다.</div>
					<div>⑤ “회사”가 제2항과 제3항에 의해 “이용자”의 동의를 받아야 하는 경우에는 개인정보보호 책임자의
						신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공
						관련사항(제공받은자, 제공목적 및 제공할 정보의 내용) 등 관련 법령이 규정한 사항을 미리 명시하거나 고지해야 하며
						“이용자”는 언제든지 이 동의를 철회할 수 있습니다.</div>
					<div>⑥ “이용자”는 언제든지 “회사”가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수
						있으며 “회사”는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다.</div>
					<div>⑦ “회사”는 개인정보 보호를 위하여 “이용자”의 개인정보를 처리하는 자를 최소한으로 제한하여야 하며
						신용카드, 은행계좌 등을 포함한 “이용자”의 개인정보의 분실, 도난, 유출, 동의 없는 제3자 제공, 변조 등으로 인한
						“이용자”의 손해에 대하여 모든 책임을 집니다.</div>
					<div>⑧ “회사”는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이
						파기합니다.</div>
					<div>⑨ “회사”는 개인정보의 수집•이용•제공에 대해 “이용자”가 동의를 거절하는 경우 제한되는 서비스를
						구체적으로 명시하고, 필수수집항목이 아닌 개인정보의 수집•이용•제공에 관한 “이용자”의 동의 거절을 이유로 회원가입 등
						서비스 제공을 제한하거나 거절하지 않습니다.</div>
					<p></p>
					<div>제2장 통신판매서비스</div>
					<p></p>
					<div>제16조(구매신청 및 개인정보 제공 동의 등)</div>
					<p></p>
					<div>“이용자”는 “몰” 상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, “회사”는
						“이용자”가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.</div>
					<p></p>
					<div>1. 재화 등의 검색 및 선택</div>
					<div>2. 받는 사람의 성명, 주소, 전화번호, 전자우편주소(또는 이동전화번호) 등의 입력</div>
					<div>3. 약관 내용, 청약철회권이 제한되는 서비스, 배송료․설치비 등의 비용부담과 관련한 내용에 대한
						확인</div>
					<div>4. 이 약관에 동의하고 위 3호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)</div>
					<div>5. 재화 등의 구매신청 및 이에 관한 확인 또는 “몰”의 확인에 대한 동의</div>
					<div>6. 결제 방법의 선택 및 결제</div>
					<p></p>
					<div>제17조(계약의 성립 등)</div>
					<p></p>
					<div>① 재화 등의 매매계약은 “이용자”가 청약의 의사표시를 하고 이에 대해 “회사”가 승낙의 의사표시를
						함으로써 체결됩니다.</div>
					<div>② “회사”는 제1항에 따른 승낙의 의사 표시는 “몰” 내에서 “이용자”에게 제공되는 팝업 기타 안내
						화면, 전자문서 등을 통한 수신확인 통지의 방법으로 하며, 계약의 성립 시기는 수신확인 통지가 “이용자”에게 도달한
						때로 합니다.</div>
					<div>③ “회사”의 승낙의 의사표시에는 “이용자”의 구매 신청에 대한 확인 및 판매 가능 여부, 구매신청의
						정정 취소 등에 관한 정보 등을 포함하여야 합니다.</div>
					<div>④ 수신확인통지를 받은 “이용자”는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시
						구매신청 변경 및 취소를 요청할 수 있고 “회사”는 배송 시작 전에 “이용자”의 요청이 있는 경우에는 지체 없이 그
						요청에 따라 처리하여야 합니다. 다만, 이미 대금을 지불한 경우에는 제20조의 청약철회 등에 관한 규정에 따릅니다.</div>
					<div>⑤ 계약이 성립한 후 회사가 제6항 각 호의 사유를 발견한 경우 “회사”는 즉시 계약을 해제 또는
						취소할 수 있으며, 계약 해제 또는 취소 시 회사는 회원이 상품 대금을 지급한 날로부터 3영업일 이내에 환급하거나
						환급에 필요한 조치를 취합니다.</div>
					<div>⑥ “회사”는 제16조에 따른 구매 신청에 대하여 다음 각 호에 해당하는 경우 구매 신청을 승낙하지
						않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는
						법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.</div>
					<p></p>
					<div>1. 신청 내용에 허위, 기재 누락, 오기가 있는 경우</div>
					<div>2. 미성년자가 담배, 주류 등 청소년보호법에서 금지하는 재화 등을 구매하는 경우</div>
					<div>3. 제7조에 따라 회원 자격이 제한 또는 상실된 회원이 구매신청을 한 경우</div>
					<div>4. 기타 구매 신청에 승낙하는 것이 “회사”의 기술상 현저히 지장이 있다고 판단하는 경우</div>
					<p></p>
					<div>제18조(재화 등의 공급)</div>
					<p></p>
					<div>① “회사”는 ”이용자”가 청약을 한 날부터 7일 이내에 재화 등의 공급에 필요한 조치를 하여야
						하고, “이용자”가 재화 등을 공급받기 전에 미리 재화 등의 대금을 전부 또는 일부 지급한 경우 “이용자”가 그 대금을
						지급한 날부터 3영업일 이내에 재화 등의 공급에 필요한 조치를 취합니다.</div>
					<div>② “회사”는 “이용자”가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간
						등을 안내합니다.</div>
					<p></p>
					<div>제19조(환급)</div>
					<p></p>
					<div>“회사”는 “이용자”가 청약을 한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는
						지체 없이 그 사유를 “이용자”에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 3영업일 이내에
						환급하거나 환급에 필요한 조치를 취합니다.</div>
					<p></p>
					<div>제20조(청약철회 등)</div>
					<div>① “회사”와 재화 등의 구매에 관한 계약을 체결한 “이용자”는 「전자상거래 등에서의 소비자보호에
						관한 법률」 제13조 제2항에 따른 계약내용에 관한 서면을 받은 날(그 서면을 받은 때보다 재화 등의 공급이 늦게
						이루어진 경우에는 재화 등을 공급받거나 재화 등의 공급이 시작된 날을 말합니다)부터 7일 이내에는 해당 계약에 대한
						청약의 철회 및 계약의 해제(이하 “청약철회 등”)를 할 수 있습니다. 다만, 청약철회 등에 관하여 「전자상거래
						등에서의 소비자보호에 관한 법률」에 달리 정함이 있는 경우에는 동 법 규정에 따릅니다.</div>
					<div>② “이용자”는 다음 각 호의 어느 하나에 해당하는 경우에는 “회사”의 의사에 반하여 청약철회 등을
						할 수 없습니다.</div>
					<div>1. “이용자”에게 책임 있는 사유로 재화 등이 멸실되거나 훼손된 경우(다만, 재화 등의 내용을
						확인하기 위하여 포장 등을 훼손한 경우는 제외합니다)</div>
					<div>2. “이용자”의 사용 또는 일부 소비로 재화 등의 가치가 현저히 감소한 경우</div>
					<div>3. 시간이 지나 다시 판매하기 곤란할 정도로 재화 등의 가치가 현저히 감소한 경우</div>
					<div>4. 복제가 가능한 재화 등의 포장을 훼손한 경우</div>
					<div>5. 용역 또는 디지털콘텐츠의 제공이 개시된 경우. 다만, 가분적 용역 또는 가분적 디지털콘텐츠로
						구성된 계약의 경우에는 제공이 개시되지 아니한 부분에 대하여는 그러하지 아니합니다.</div>
					<div>6. “이용자”의 주문에 따라 개별적으로 생산되는 재화 등으로 사전에 해당 거래에 대해 별도로 그
						사실을 고지하고 소비자의 동의를 받은 경우</div>
					<div>③ “회사”가 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명시하거나 시용
						상품을 제공하는 등의 조치를 하지 않은 경우 제2항제2호부터 제5호의 규정에도 불구하고 “이용자”의 청약철회 등이
						제한되지 않습니다.</div>
					<div>④ “이용자”는 제1항 및 제2항의 규정에 불구하고 재화 등의 내용이 표시•광고 내용과 다르거나
						계약내용과 다르게 이행된 때에는 해당 재화 등을 공급받은 날부터 3개월 이내, 그 사실을 안 날 또는 알 수 있었던
						날부터 30일 이내에 청약철회 등을 할 수 있습니다.</div>
					<p></p>
					<div>제21조(청약철회 등의 효과)</div>
					<p></p>
					<div>① “회사”는 “이용자”로부터 재화 등을 반환 받은 경우 3영업일 이내에 이미 지급받은 재화 등의
						대금을 환급합니다. 이 경우 “회사”가 “이용자”에게 재화 등의 환급을 지연한 때에는 그 지연기간에 대하여 「전자상거래
						등에서의 소비자보호에 관한 법률 시행령」 제21조의2에서 정하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.</div>
					<div>② “회사”는 위 대금을 환급함에 있어서 “이용자”가 신용카드 또는 전자화폐 등의 결제수단으로 재화
						등의 대금을 지급한 때에는 지체 없이 해당 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는
						취소하도록 요청합니다.</div>
					<div>③ 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한 비용은 “이용자”가 부담합니다. “회사”는
						“이용자”에게 청약철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시•광고 내용과
						다르거나 계약내용과 다르게 이행되어 청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 “회사”가 부담합니다.</div>
					<div>④ “이용자”가 재화 등을 제공받을 때 발송비를 부담한 경우에 “회사”는 청약철회 시 그 비용을 누가
						부담하는지를 “이용자”가 알기 쉽도록 명확하게 표시합니다.</div>
					<p></p>
					<div>제22조(긴급조치)</div>
					<p></p>
					<div>① “회사”는 “이용자”가 위법, 불법, 타인의 권리 침해 그 밖에 부당한 목적을 위해 서비스를
						이용한다고 판단하는 경우 그 “이용자”와 관련된 물품의 수취나 배송을 거절할 권리를 가집니다.</div>
					<div>② “회사”가 제공하는 재화 등이 관할 관청 또는 당국에 의해 제재를 받았을 때 "회사"는 해당 재화
						등을 관할 관청 또는 당국에 인도하는 것을 원칙으로 합니다. 이로 인하여 “이용자”가 손해를 입었다고 할지라도 해당
						손해에 대해서 "회사"는 일체의 책임을 지지 않으며 또한 “이용자”는 해당 물품에 대한 서비스 이용요금 및 관련비용
						등의 지급의무를 면하지 아니합니다.</div>
					<div>③ "회사"의 주소로 배송된 물품에 악취, 액체 누수 등 그 밖에 정당한 사유가 있다고 인정이 되어
						긴급을 필요로 하는 경우 "회사"는 “이용자”에게 해당 사실을 통지하고 해당 물품을 별도 장소로 이동 보관하는 등
						임시조치를 취할 수 있습니다. 이로 인해 발생하는 추가비용은 “이용자”가 부담하여야 하며 또한 “이용자”에게 손해가
						발생하더라도 해당 손해에 대하여 책임을 지지 않습니다.</div>
					<p></p>
					<div>제3장 통신판매중개서비스</div>
					<p></p>
					<div>제23조(서비스의 이용 및 책임의 제한)</div>
					<P></P>
					<div>① 통신판매중개서비스와 관련하여 “회사”는 통신판매중개자로서 “이용자”와 “판매자” 간의 자유로운
						재화 등의 거래를 위한 시스템을 운영, 관리 및 제공하며 “이용자”는 재화 등을 구매하기 전에 반드시 “판매자”가
						“몰” 내에 작성한 재화 등의 상세 내용과 거래 조건을 확인해야 합니다.</div>
					<div>② “회사”는 관련 법령에 따라 “회사”가 부담해야하는 책임 및 “몰”의 운영 및 관리 책임을
						부담하고, “몰”에서의 “판매자”와 “이용자” 간의 재화 등의 거래와 관련하여 “이용자” 또는 “판매자”를 대리하지
						아니하며, “이용자”와 “판매자” 간 재화 등의 거래에 대한 위험과 책임은 거래 당사자가 부담합니다.</div>
					<div>③ “회사”는 관련 법령에 따라 “회사"가 책임을 부담하는 경우를 제외하고는 “몰”에서의 “판매자”와
						“이용자” 간의 상품 거래와 관련하여 거래당사자의 판매 의사 또는 구매 의사의 존부 및 진정성, 상품의 품질, 완전성,
						안정성, 적법성 및 타인의 권리에 대한 비침해성, “판매자”가 제공하거나 등록한 정보 및 자료의 진실성 또는 적법성
						등을 보증하지 아니하며, “이용자”와 “판매자” 간의 상품 거래에 관한 위험과 책임은 거래 당사자가 부담합니다.</div>
					<p></p>
					<div>제24조(계약의 성립 등)</div>
					<div>① 통신판매중개서비스와 관련하여, 재화 등의 매매계약은 “이용자”가 “판매자”의 계약 조건에 응하여
						청약의 표시를 하고 이에 대해 “판매자”가 승낙의 의사표시를 함으로써 체결됩니다.</div>
					<div>② 청약의 승낙 방법과 내용, 계약 성립의 시기, 의사의 불일치에 따른 조치 등은 제16조의 규정을
						준용하며, 이 때 “회사”는 “판매자”로 봅니다.</div>
					<p></p>
					<div>제25조(재화 등의 공급)</div>
					<div>① “회사”는 “이용자”의 대금 결제에 대한 확인 통지를 받은 날로부터 3영업일 이내에 “판매자”에게
						배송에 필요한 조치를 취하도록 안내합니다.</div>
					<div>② 재화 등의 배송과 관련하여 “이용자”과 “판매자”, 배송업체, 금융기관 등 사이에 분쟁이 발생하는
						경우 당사자들 간에 해결하는 것을 원칙으로 하며, 이와 관련하여 “회사”의 고의 또는 중대한 과실이 없는 한 “회사”는
						어떠한 책임도 부담하지 않습니다.</div>
					<div>③ “이용자”가 재화 등의 배송완료일로부터 7일 이내에 교환 또는 반품에 대한 의사표시를 하지 않으면
						“회사”는 “이용자”에게 해당 거래에 대하여 구매 확정의 의사가 있는 것으로 간주하고 배송상태를 자동으로 배송 완료로
						전환할 수 있습니다. 단, “이용자”는 실제로 재화 등을 수령하지 못한 경우 미수취신고를 할 수 있습니다.</div>
					<p></p>
					<div>제26조(청약철회 등)</div>
					<p></p>
					<div>① “회사”는 “이용자”로부터 청약철회 등의 의사표시를 받은 경우 즉시 그 사실을 “판매자”에게
						통보합니다.</div>
					<div>② 청약철회 등에 필요한 배송비 및 기타 비용은 귀책사유가 있는 당사자가 부담합니다. 이 경우 재화
						등의 하자 또는 오배송으로 인한 철약철회 등은 “판매자”가 그 비용을 부담하고, “이용자”의 단순 변심으로 인한
						청약철회 등은 “이용자”가 그 비용을 부담합니다.</div>
					<div>③ “이용자”의 청약철회 등의 신청에 대하여 “판매자”가 자신의 업무를 이행하지 않거나 이를 지연하는
						경우 “회사”는 “이용자”의 청약철회 등이 제20조에 따라 정당한 것인지 확인하고, 정당한 경우 해당 거래를 취소하는
						한편 결제대금을 “이용자”에게 환불할 수 있습니다.</div>
					<div>④ 이외에 청약철회의 조건, 제한의 사유 및 관련 표시 등은 제20조의 규정을 준용하며, 이 때,
						“회사”는 “판매자”로 봅니다.</div>
					<p></p>
					<div>제27조(금지행위)</div>
					<div>“이용자”는 “회사”가 제공하는 서비스를 이용하지 아니하고 “판매자”와 직접 거래하는 행위를 할 수
						없습니다. 이 경우 직접 거래를 통해 발생한 문제에 대한 책임은 거래 당사자에게 있으며, “회사”는 어떠한 책임도
						부담하지 않습니다.</div>
					<p>
					<div>제28조(분쟁의 해결)</div>
					<div>① “회사”는 “이용자”가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여
						피해보상처리기구를 설치 · 운영합니다.</div>
					<div>② “회사”는 “이용자”로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만,
						신속한 처리가 곤란한 경우에는 “이용자”에게 그 사유와 처리일정을 즉시 통보합니다.</div>
					<div>③ “회사”와 “이용자” 간에 발생한 전자상거래 분쟁과 관련하여 “이용자”의 피해구제신청이 있는
						경우에는 공정거래위원회 또는 시 · 도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.</div>
					<div>④ “회사”는 “이용자”와 “판매자” 간에 발생하는 분쟁을 객관적이고 원활하게 조정하기 위해
						분쟁조정기구를 운영합니다.</div>
					<div>⑤ “이용자”는 분쟁조정기구의 조정에 신의칙에 입각하여 성실히 응해야 합니다.</div>
					<p></p>
					<div>제4장 기타 사항</div>
					<p></p>
					<div>제29조(저작권의 귀속 및 이용제한)</div>
					<p></p>
					<div>① “회사“가 작성한 저작물에 대한 저작권 및 기타 지적재산권은 ”회사“에 귀속합니다.</div>
					<div>② “이용자”는 “ 몰”을 이용함으로써 얻은 정보 중 “회사”에게 지적재산권이 귀속된 정보를
						“회사”의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게
						이용하게 하여서는 안됩니다.</div>
					<div>③ “이용자”가 “회사”의 서비스를 이용하면서 작성한 상품평, Q＆A 등 게시물의 저작권은 해당
						“이용자” 본인에게 있으며, 해당 게시물이 타인의 저작권 및 기타 지적재산권을 침해하는 경우 그에 대한 책임은
						“이용자” 본인이 부담합니다.</div>
					<div>④ “회사”는 게시물이 다음 각 호의 어느 하나에 해당하는 경우, 사전 통보 없이 해당 게시물을
						삭제하거나 다른 “이용자”가 볼 수 없도록 임시조치를 취할 수 있습니다. 단, “회사”는 게시물이 단순히 “회사” 또는
						“판매자”에게 불리하다는 이유만으로 삭제 또는 임시조치를 취하지 않습니다.</div>
					<div>1. 대한민국 법령을 위반하는 내용을 포함하는 경우</div>
					<div>2. 관계법령에 의해 판매가 금지된 불법제품 또는 음란물을 게시하거나 광고하는 경우</div>
					<div>3. 허위 또는 과장광고의 내용을 포함하는 경우</div>
					<div>4. 타인의 권리, 명예, 신용 및 기타 정당한 권리를 침해하는 경우</div>
					<div>5. 직거래 유도 또는 다른 사이트의 링크를 게시하는 경우</div>
					<div>6. 정보통신기기의 오작동을 일으킬 수 있는 악성코드, 데이터 등을 포함하는 경우</div>
					<div>7. 사회 공공질서 및 미풍양속에 위배되는 경우</div>
					<div>8. “회사”가 제공하는 서비스의 원활한 운영을 방해하는 것으로 판단되는 경우</div>
					<div>9. 범죄행위와 관련된 내용을 포함하는 경우</div>
					<div>10. 정치, 경제적 분쟁을 야기하는 내용을 포함하는 경우</div>
					<p></p>
					<div>⑤ “회사”는 제3항에 따라 “이용자”가 작성한 게시물을 “몰”에서 거래되는 상품의 판촉, 홍보 등을
						위해 사용할 수 있으며, "회사"가 운영하는 웹 사이트 등에 복제,배포,전송,전시 할 수 있으며, 본질적인 내용을
						변경하지 않는 범위 내에서 수정, 편집, 번역 할 수 있습니다. “회사”는 “이용자”의 게시물을 사용하는 경우 해당
						“이용자”에게 그 사실을 통보합니다.</div>
					<p></p>
					<div>제30조(재판권 및 준거법)</div>
					<p></p>
					<div>① “회사”와 “이용자” 간에 발생한 전자상거래 분쟁에 관한 소송은 민사소송법에 따라 그 관할법원을
						정합니다.</div>
					<div>② “회사”와 “이용자” 간에 제기된 전자상거래 소송에는 대한민국의 법률을 적용합니다.</div>
					<p></p>
					<div>이 이용약관은 2022년 11월 7일 부터 시행합니다.</div>
					<p></p>
					<p></p>
				</ul>
			</div>
		</div>
		<!-- footer -->
	<footer>
		<div id="footer">
			<div class="xans-element- xans-layout xans-layout-footer footer_start ">

				<div class="cs">
					<div class="cs-down">
					
						<div class="cs_left">
							<ul>
								<li class="title">C/S<span></span>
								</li>
							</ul>
							<ul class="cs_info">
								<li class="tel">02-548-3339</li>
								<li class="tel_time">AM 9:00 - PM 6:00 
								<span>(주말 및 공휴일 휴무)</span>
								</li>
							</ul>
						</div> <!-- end cs_left -->

						<div class="company_pg">
							<ul>
								<li class="title">COMPANY</li>
							</ul>
							<div class="inner2">
								<li class="info">
									<span>상호 <span>(주)레스트롱</span></span> <br>
									<span>대표<span class="han">000</span></span> <br>
									<span>사업자등록번호<span>123-98-05123</span></span> <br> 
									<span>통신판매업 신고<span>2022-서울종로-0500</span></span> <br>
									<span>전화 <span>02-517-1470</span></span> <br>
									<span>주소 <span> 서울 종로구 창경궁로 254 7층</span></span> <br>
								</li>
							</div>
						</div> <!-- end company_pg -->

						<div class="cs_right">
							<ul>
								<li class="title">BANK</li>
							</ul>
							<li class="info">
								<span class="han">국민은행</span> 
								<span class="num">98760212341562</span><br> 
								<span class="name">예금주 <strong> (주)000</strong></span>
							</li>
						</div> <!-- end cs_right -->
						
					</div> <!-- end cs-down -->

					<div class="company_i">
						<li class="utilMenu">
							<a href='${path }/views/jsp/etc/policy.jsp'">이용약관</onclick>
						</li>
						<p></p>
					</div> <!-- end company_i -->
		
				</div> <!-- end cs -->
			</div>
		</div> <!-- end footer -->
	</footer>
	</div>
</body>
</html>