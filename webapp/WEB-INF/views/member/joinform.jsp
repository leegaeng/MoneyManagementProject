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
						$("#resultId").html("<br>사용가능한 아이디입니다.");
					}

					if (result === "false") {
						$("#resultId").html("<br>이미 존재하는 아이디입니다.");
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
					width="100px">


				<h2>회원가입</h2>

				<form id="join-form" name="joinForm" method="post"
					action="/MoneyManagementProject/member/join">
					<label class="block-label" for="mid">아이디</label> <input id="mid"
						name="mid" type="text" value=""><input type="button" value="id 중복체크" id="checkId"> 
						<label id="resultId"></label><br><br> <label
						class="block-label" for="mname">이름</label> <input id="name"
						name="mname" type="text" value=""> <br><br>
						
					<label class="block-label">패스워드</label> <input name="mpassword"
						type="password" value="">	<br><br>						

					<input type="submit" value="가입하기">

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