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
					width="100px">


				<h2>로그인</h2>

				<form id="login-form" name="loginform" method="post"
					action="/MoneyManagementProject/member/login">
					<label class="block-label" for="email">아이디</label> <input id="mid"
						name="mid" type="text" value="">

					<p>
						<label class="block-label">패스워드</label> <input name="mpassword"
							type="mpassword" value="">
					<p>
					<p>
						<input type="submit" value="로그인"><input type="button"
							value="회원가입">
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