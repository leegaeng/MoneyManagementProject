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
	href="/MoneyManagementProject/assets/css/login.css" />

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>

<script type="text/javascript">
	$(function() {

		$("#modifyUinfo").click(function() {
			alert("회원정보가 수정되었습니다.");
		});
	});
</script>

</head>
<body>
	<div id="container">
		<div id="intro">
			<div id="pageHeader">
				<jsp:include page="/WEB-INF/views/include/header.jsp" flush="false" />
			</div>

		</div>

		<div id="supportingText">
			<div id="explanation" align="center">
				<img src="/MoneyManagementProject/assets/images/intro.jpg"
					width="100px" id="logo">


				<form id="join-form" name="uinfoForm" method="post"
					action="/MoneyManagementProject/member/update">
					<h2>회원정보수정</h2>

					<table>
						<input type="hidden" name="mid" value="${m.mid}">
						<tr>
							<td>이름</td>
							<td><input id="mname" name="mname" type="text"
								value="${m.mname}" placeholder="name"></td>
						</tr>
						<tr>
							<td>패스워드</td>
							<td><input name="mpassword" type="password"
								value="${m.mpassword}" placeholder="password"></td>
						</tr>
						<tr>
							<td colspan="2"><input id="modifyUinfo" type="submit"
								value="수정하기"></td>
						</tr>
					</table>
				</form>

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