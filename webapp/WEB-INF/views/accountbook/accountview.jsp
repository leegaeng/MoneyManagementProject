<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>내 돈을 부탁해</title>
<link rel="stylesheet" type="text/css" media="screen"
	href="/MoneyManagementProject/assets/css/main.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="/MoneyManagementProject/assets/css/accountbook.css" />
<style type="text/css">
.search {
	margin: 20px auto;
	width: 200px;
}

.search .field {
	position: relative;
}

.search label {
	background:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAQAAAC1QeVaAAAAxElEQVR4AXXPIUuDcRDA4Zv4AUSwTLEKVoNlySyCYLO98CCsahGrX0AW/QhmBRHEJghLS4JFBBXDgrJi2In78w8v4v3S8XDh4nd0DTxLEzd2RC2EnrH07trQVDrXqbhs7FvfnBDWDKWTigOpL2oWvZpYKPjio1zVHEt7BdOtaLUtHRX8MmqjRjooeCVttPBOWi+4JT1aLaDjVLpU/5ytn840Dj1IaWSpYmi8yVlTF54qh9K8nn27usJK5fC3yvfhPx7a/AE9dYwDEfKrlAAAAABJRU5ErkJggg==)
		no-repeat 0 50%;
	color: #eeeeee;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
	top: 50%;
	transition: left .4s, transform .4s;
	padding-left: 1.25em;
	position: absolute;
}

.search .input-search {
	border: 1px solid #dfdfdf;
	border-radius: .25em;
	box-shadow: 0 1px 0 #bfbebf;
	display: block;
	font: 400 1em/1.5em sans-serif;
	padding: .5em 1.75em;
	width: 100%;
}

.search .input-search:focus+label,.search .input-search:valid+label {
	left: .5em;
	transform: translate(0, -50%);
}

.search .input-search:valid+label {
	text-indent: -9999px;
}
</style>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	$(function() {

		$(".accountdetails").css("display", "none");

		$("#input-search").change(function() {

		});

	});

	function list() {
		location.href = "/MoneyManagementProject/accountbook/list";
	}

	function accountdetail() {
		if ($(".accountdetails").css("display") == 'block') {
			$(".accountdetails").css("display", "none");
		} else {
			$(".accountdetails").css("display", "block");
		}
	}

	function insertmanagement() {

	}
</script>
</head>
<body>
	<div id="container">
		<div id="intro">
			<div id="pageHeader">
				<jsp:include page="/WEB-INF/views/include/header.jsp" flush="false" />
			</div>

		</div>
		<span class="toggler active" data-toggle="grid"><span
			class="entypo-layout"></span></span> <span class="toggler"
			data-toggle="list"><span class="entypo-list"></span></span>

		<div id="supportingText">
			<div id="explanation" align="center">


				<h2>${a.atitle}</h2>
				<table align="center">
					<tr>
						<th>보유잔액</th>
						<th>총 수입</th>
						<th>총 지출</th>
					</tr>
					<tr>
						<td><c:if test="${not empty a.atotalmoney}">
						   ${a.atotalmoney}
						</c:if> <c:if test="${empty a.atotalmoney}">0</c:if></td>
						<td><c:if test="${not empty a.aincome}">
						   ${a.aincome}
						</c:if> <c:if test="${empty a.aincome}">0</c:if></td>
						<td><c:if test="${not empty a.aoutcome}">
						   ${a.aoutcome}
						</c:if> <c:if test="${empty a.aoutcome}">0</c:if></td>
					</tr>

				</table>
				<form action="insertManagement-form" class="search">
					<div class="field">

						<input type="text" class="input-search" id="input-search"
							name="input-search" required> <label for="input-search">친구
							등록</label>
					</div>
				</form>

				<c:forEach var="d" items="${list}">
					<li class="survey-item">
						<div class="pull-right">
							<table>
								<tr>
									<td>${d.dtitle}</td>
									<td>${d.dcontent}</td>
									<td>${fn:substring(d.ddate, 0,10)}</td>
									<td>${d.dincome}</td>
									<td>${d.doutcome}</td>
									<td>${d.dmoney}</td>
								</tr>
							</table>
						</div>
					</li>
				</c:forEach>

				<input type="button" value="상세 내역 추가" onclick="accountdetail()">
				<div class="accountdetails">
					<h2>상세 내역</h2>
					<form id="insert-form" name="insertDetailForm" method="post"
						action="/MoneyManagementProject/accountdetail/insert">
						<input type="hidden" name="aid" value="${a.aid}">
						<table>

							<tr>
								<td>제목</td>
								<td><input id="dtitle" name="dtitle" type="text" value=""
									placeholder="제목"></td>
							</tr>
							<tr>
								<td>설명</td>
								<td><input id="dcontent" name="dcontent" type="text"
									value="${authMember.mname}]" placeholder="설명"></td>
							</tr>
							<tr>
								<td>수입 금액</td>
								<td><input id="dincome" name="dincome" type="number"
									value="0" step="100"></td>
							</tr>
							<tr>
								<td>지출 금액</td>
								<td><input id="doutcome" name="doutcome" type="number"
									value="0" step="100"></td>
							</tr>

						</table>
						<input type="submit" value="등록">
					</form>
				</div>


				<div id="footer">
					<jsp:include page="/WEB-INF/views/include/footer.jsp" />
				</div>

			</div>
		</div>


		<div id="linkList">
			<div id="linkList2">
				<c:import url="/WEB-INF/views/include/navigation.jsp">
				</c:import>
			</div>
		</div>

	</div>
</body>
</html>