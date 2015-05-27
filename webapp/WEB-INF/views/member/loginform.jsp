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
	function login() {

		location.href = "/MoneyManagementProject/member/join";

	}
</script>
<script type="text/javascript">
	<c:if test="${param.result == 'fail'}">
	alert("아이디 혹은 비밀번호가 틀렸습니다.");
	</c:if>
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

				<form id="login-form" name="loginform" method="post"
					action="/MoneyManagementProject/member/login">					
					<h2>로그인</h2>

					<input id="mid" name="mid" type="text" value="" placeholder="id">
					<input name="mpassword" type="password" value=""
						placeholder="password"> <input type="submit" value="로그인"><input
						type="button" value="회원가입" onclick="login()">
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