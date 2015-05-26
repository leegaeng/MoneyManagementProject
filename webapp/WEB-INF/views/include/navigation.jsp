<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">

</head>




<ul>
	<%-- <input type="hidden" value="${authMember.name}" id="name">
	<c:choose>
		<c:when test="${param.type=='main'}">
			<li class="selected">${authMember.name}</li>
			<li><a href="/mysite3/guestbook/list">방명록</a></li>
			<li><a href="/mysite3/board/list">게시판</a></li>
		</c:when>

		<c:when test="${param.type=='guestbook'}">
			<li>${authMember.name}</li>
			<li class="selected"><a href="/mysite3/guestbook/list">방명록</a></li>
			<li><a href="/mysite3/board/list">게시판</a></li>
		</c:when>

		<c:otherwise>
			<li>${authMember.name}</li>
			<li><a href="/mysite3/guestbook/list">방명록</a></li>
			<li class="selected"><a href="/mysite3/board/list">게시판</a></li>
		</c:otherwise>
	</c:choose> --%>

	<div id="lselect">
		<ul>
			<li><a href="/MoneyManagementProject/index">Home</a></li>
			<li><a href="/MoneyManagementProject/member/login">Login</a></li>
			<li><a href="">AccountBook</a></li>
			<li><a href="">MyInfo</a></li>
			<li><a href="">Contacts</a></li>
		</ul>
	</div>

	<div id="larchives">
		<ul>
			<li><a href="">Lorem Ipsum</a></li>
			<li><a href="">Lorem Ipsum</a></li>
			<li><a href="">Lorem Ipsum</a></li>
			<li><a href="">Lorem Ipsum</a></li>
		</ul>
	</div>
</ul>