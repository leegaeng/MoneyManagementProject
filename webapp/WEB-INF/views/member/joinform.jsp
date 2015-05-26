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

		$("#checkId").click(function() {
			$.ajax({
				url : "checkId/" + $("#mid").val(),
				type : "get",
				dataType : "json",
				//	data : "",
				//			    contentType: "application/json",
				success : function(response) {
					var result = $.trim(response);
					if (result === "true") {
						alert("사용가능한 아이디입니다.");
					}

					if (result === "false") {

						alert("이미 존재하는 아이디입니다.");
					}
				},
				error : function(jqXHR, status, e) {
					console.error(status + " : " + e);
				}

			});

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

				<form id="join-form" name="joinForm" method="post"
					action="/MoneyManagementProject/member/join">
					<h2>회원가입</h2>

					<table>
						<tr>
							<td>아이디</td>
							<td><input id="mid" name="mid" type="text" value=""
								placeholder="id"> <input type="button" value="id 중복체크"
								id="checkId"></td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input id="mname" name="mname" type="text" value=""
								placeholder="name"></td>
						</tr>
						<tr>
							<td>패스워드</td>
							<td><input name="mpassword" type="password" value=""
								placeholder="password"></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="가입하기"></td>
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