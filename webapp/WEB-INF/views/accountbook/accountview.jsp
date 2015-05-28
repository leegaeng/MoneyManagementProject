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
	href="/MoneyManagementProject/assets/css/accountdetail.css" />
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(".accountdetails").css("display", "none");

		$("#input-search")
				.keydown(
						function() {
							$
									.ajax({
										url : "/MoneyManagementProject/member/searchId",
										type : "post",
										dataType : "json",
										data: {
											"mid": $("#input-search").val()
										},
										success : function(response) {
											if (response.user != null) {
												console.log( response.user );
												
												$(".resultId")
														.html(
																response.user.mid
																		+ " "
																		+ response.user.mname
																		+ " <input type='button' style='width:50px' value='등록'"
																		+" onclick=insertmanagement('"
																		+ response.user.mid
																		+ "')>");
											} else {
												$(".resultId").html(
														"해당 사용자가 없습니다.");

											}
										},
										error : function(jqXHR, status, e) {
											console.error(status + " : " + e);
										}

									});

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
	function insertmanagement(mid) {
		$.ajax({
			url : "/MoneyManagementProject/accountbook/management",
			type : "post",
			data: {
				"mid" : mid,
				"aid" : $("#aid").val()
			},
			dataType : "json",
			success : function(response) {
				console.log(response);
				if( response.result == "success" ) {
					alert("성공적으로 등록되었습니다.");
				}
			},
			error : function(jqXHR, status, e) {
				console.error(status + " : " + e);
			}

		});

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

				<div class="search">
					<div class="field">

						<input type="text" class="input-search" id="input-search"
							name="input-search" required> <label for="input-search">친구
							등록</label>
					</div>
					<div class="resultId"></div>

				</div>


				<c:forEach var="d" items="${list}">
					<li class="survey-item">
						<div class="pull-right">
							<table class="accountdetailform">
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
						<input type="hidden" name="aid" id="aid" value="${a.aid}">
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