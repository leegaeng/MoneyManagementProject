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
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	$(function() {

		$('.survey-item').click(function(index) {
			var idx= "#"+$('.survey-item').index(this);
			var aid = $(idx).val();
			location.href = "/MoneyManagementProject/accountbook/accountview/"+aid;
		});

	});

	function insert() {
		location.href = "/MoneyManagementProject/accountbook/insert";
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

				<c:set var="index" value="0"></c:set>
				<ul class="surveys grid">
					<c:forEach items="${list}" var="a">
						<li class="survey-item"
							style="background-color: rgb(${a.acolor}, 0.4)"><span
							class="survey-name"> <input type="hidden" id="${index}"
								value="${a.aid}"> ${a.atitle}
						</span> <span class="survey-total"> ${a.atotalmoney} </span>

							<div class="pull-right">
								<span class="survey-progress"> <span
									class="survey-progress-bg"> <span
										class="survey-progress-fg" style="width: ${ (a.aincome/a.aoutcome) * -1}%;"></span>
								</span> <span class="survey-progress-labels"> <span
										class="survey-progress-label"> </span> <span
										class="survey-completes"> 수입 대비 지출 : </span>
								</span>
								</span> <span class="survey-end-date ended"> </span> <span
									class="survey-stage"> <span class="stage draft">Draft</span>
									<span class="stage awarded"></span> <span class="stage live"></span>
									<span class="stage ended active"
									style="background: ${a.acolor}"></span>
								</span>
							</div></li>
						<c:set var="index" value="${index+1}"></c:set>
					</c:forEach>
				</ul>

				<input type="button" style="margin-left: 130px" value="가계부 등록"
					onclick="insert()">

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