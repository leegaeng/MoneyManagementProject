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
				<jsp:include page="/WEB-INF/views/include/header.jsp" />
				<img src="/MoneyManagementProject/assets/images/intro.jpg">

			</div>

		</div>

		<div id="supportingText">
			<div id="explanation" align="center">
				<h2>내 돈을 부탁해?</h2>
				<p class="p2">요즘 같이 돈 모으기 힘든 세상! 내 돈 관리부터 우리 모임 돈까지 철저하게 관리할 수
					있는 사이트가 나타났다!
			</div>

			<div id="explanation">
				<h3>첫째,</h3>
				<p class="p1">
					<span>회원가입을 하세요!</span>
				<p class="p2">
					<span>회원가입절차 너무 까다로우시죠? 매번 주민등록번호부터 주소까지, 귀찮아귀찮아! 저희는 아이디,
						이름, 패스워드만으로 가입이 가능합니다</span>
				</p>
			</div>

			<div id="participation">
				<h3>둘째,</h3>
				<p class="p1">
					<span>가계부를 등록하세요!</span>
				</p>
			</div>

			<div id="benefits">
				<h3>셋째,</h3>
				<p class="p1">
					<span>친구를 추가하세요!</span>
				</p>
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