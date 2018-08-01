<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<nav class="navbar navbar-inverse ">
	<div class="container-fluid">

		<div class="row">
			<div class="navbar-header col-sm-2">
				<a class="navbar-brand" href="${path}">BlogDay.com</a>
			</div>

			<div class="col-sm-10">
				<div class="row">

					<form action="#" class="navbar-form form-group">
						<div class="col-sm-3">
							<!-- 메뉴 -->
							<ul class="nav navbar-nav">
								<li><a href="#">커뮤니티</a></li>
								<li><a href="#">친구관리</a></li>
								<li><a href="#">메세지</a></li>
							</ul>
						</div>

						<div class="col-sm-4">
							<!-- 검색창 -->
							<input type="text" class="form-control" placeholder="검색어를 입력해주세요">
							<button type="submit" class="btn btn-primary">
								<span class="glyphicon glyphicon-search">Search</span>
							</button>

						</div>

						<div class="col-sm-3">
							<c:choose>
								<c:when test="${sessionScope.user_info == null}">
									<ul class="nav navbar-nav navbar-right">
										<li><a href="${path}/member/signUp.do"><span
												class="glyphicon glyphicon-user"></span>&nbsp;Sign Up</a></li>
										<li><a href="${path}/login/login.do"><span
												class="glyphicon glyphicon-log-in"></span>&nbsp; Log In</a></li>
									</ul>
								</c:when>
								<c:otherwise>
									<ul class="nav navbar-nav navbar-right">
										<li><a href="${path}/member/detail.do"><span
												class="glyphicon glyphicon-user"></span>&nbsp;${sessionScope.user_info.user_name}</a></li>
										<li><a href="${path}/login/logout.do"><span
												class="glyphicon glyphicon-log-in"></span>&nbsp; Log Out</a></li>
									</ul>
								</c:otherwise>
							</c:choose>

						</div>

						<!-- 로그인, 가입 버튼  -->
					</form>

				</div>

			</div>
		</div>
	</div>
</nav>



