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



				<div class="survey-item pull-right">


					<h2>가계부 등록</h2>
					<form id="insert-form" name="insertAcoountForm" method="post"
						action="/MoneyManagementProject/accountbook/insert">
						<table>
							<tr>
								<td>표지 색깔</td>
								<td><input type="color" name="acolor" value=""></td>
							</tr>
							<tr>
								<td>가계부 이름</td>
								<td><input id="atitle" name="atitle" type="text" value=""
									placeholder="가계부 이름"></td>
							</tr>
							<tr>
								<td>총 보유금액</td>
								<td><input id="atotalmoney" name="atotalmoney"
									type="number" value="100000" placeholder="100000" step="1000"></td>
							</tr>


						</table>
						<input type="submit" value="등록">
					</form>

				</div>


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