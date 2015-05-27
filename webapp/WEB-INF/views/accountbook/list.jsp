<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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


				<li class="survey-item"><span class="survey-country list-only">
						UK </span> <span class="survey-name"> UK Beer May 2014 </span> <span
					class="survey-country grid-only"> UK </span>

					<div class="pull-right">

						<span class="survey-progress"> <span
							class="survey-progress-bg"> <span
								class="survey-progress-fg" style="width: 88%;"></span>
						</span> <span class="survey-progress-labels"> <span
								class="survey-progress-label"> 88% </span> <span
								class="survey-completes"> 490 / 500 </span>
						</span>
						</span> <span class="survey-end-date ended"> 2014 - May 10 </span> <span
							class="survey-stage"> <span class="stage draft">Draft</span>
							<span class="stage awarded">Awarded</span> <span
							class="stage live">Live</span> <span class="stage ended active">Ended</span>
						</span>
					</div></li>
				<li class="survey-item"><span class="survey-country list-only">
						US </span> <span class="survey-name"> Pepsi Tracker New Orleans </span> <span
					class="survey-country grid-only"> US </span>

					<div class="pull-right">

						<span class="survey-progress"> <span
							class="survey-progress-bg"> <span
								class="survey-progress-fg" style="width: 25%;"></span>
						</span> <span class="survey-progress-labels"> <span
								class="survey-progress-label"> 25% </span> <span
								class="survey-completes"> 150 / 500 </span>
						</span>
						</span> <span class="survey-end-date"> 2014 - July 12 </span> <span
							class="survey-stage"> <span class="stage draft">Draft</span>
							<span class="stage awarded">Awarded</span> <span
							class="stage live active">Live</span> <span class="stage ended">Ended</span>
						</span>
					</div></li>
				<li class="survey-item"><span class="survey-country list-only">
						US </span> <span class="survey-name"> Global Music Brand Tracker </span>
					<span class="survey-country grid-only"> US </span>

					<div class="pull-right">
						<span class="survey-end-date"> 2014 - Oct 1 </span> <span
							class="survey-stage"> <span class="stage draft">Draft</span>
							<span class="stage awarded active">Awarded</span> <span
							class="stage live">Live</span> <span class="stage ended">Ended</span>
						</span>
					</div></li> <input type="button" value="가계부 등록" onclick="insert()">


			</div>

			<div id="footer">
				<jsp:include page="/WEB-INF/views/include/footer.jsp" />
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