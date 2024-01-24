<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/signup_header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#btnJoin{
	font-size:18px;
	font-weight:bold;
	cursor: pointer;
	outline: none;
	width: 100%;
	height: 40px;
	border: none;
	color: white;
	background-color: #2F95B1;
	border-radius: 8px;
	font-family: 'GmarketSansMedium';
}

</style>

<div>
	<p style="text-align:center">
		<a href="home.js">
		<img src="resources/image/logo2.png"
			style="vertical-align: middle; margin: auto; padding: 40px; width: 370px;">
		</a>
	</p>
</div>


<!-- wrapper -->
<div id="wrapper">
	<form method="post" action="signinsert.js" name="join">
		<!-- content-->
		<div id="content">

			<!-- 이메일 -->
			<div class="email">
				<h3 class="join_title">
					<label for="newid">아이디</label> <strong class="required">*</strong>
				</h3>
				<span class="box int_email"> <input type="text" id="newid"
					value="${param.user_email }" name="user_email" class="field"
					placeholder="이메일을 입력해주세요">
				</span>

			</div>

			<!-- 인증코드 -->
			<div class="number">
				<div class="btn_area_s">
					<h3 class="join_title">
						<label for="signCode">인증코드</label> <strong class="required">*</strong>
					</h3>
				</div>
				<span class="box int_id"> <input type="text" id="signCode"
					name="code" class="field" value="${param.code }">
				</span>
			</div>

			<!-- 비밀번호 -->
			<div class="password">
				<h3 class="join_title">
					<label for="newpw">비밀번호</label> <strong class="required">*</strong>
				</h3>
				<span class="box int_pass"> <input type="password" id="newpw"
					name="user_pass" class="field" value="${param.user_pass }"
					placeholder=""> <span id="alertTxt">사용불가</span>
				</span> <span class="error_next_box"></span>
			</div>

			<!-- 비밀번호 -->
			<div class="password_check">
				<h3 class="join_title">
					<label for="newpw_check">비밀번호 재확인</label>
				</h3>
				<span class="box int_pass_check"> <input type="password"
					id="newpw_check" name="user_passcheck" class="field"
					value="${param.user_passcheck }" placeholder="">
				</span> <span class="error_next_box"></span>
			</div>

			<!-- 이름 -->
			<div class="name">
				<h3 class="join_title">
					<label for="newname">이름</label> <strong class="required">*</strong>
				</h3>
				<span class="box int_name"> <input type="text" id="newname"
					name="user_name" class="field" value="${param.user_name }"
					placeholder="">
				</span> <span class="error_next_box"></span>
			</div>
			<!-- 휴대번호 -->
			<div class="phone">
				<h3 class="join_title">
					<label for="newphone">휴대전화</label> <strong class="required">*</strong>
				</h3>
				<span class="box int_mobile"> <input type="tel" id="newphone"
					name="user_mobile" class="field" value="${param.user_mobile }"
					pattern="^[0-9]+$" placeholder="'-' 빼고 입력해주세요">
				</span>
			</div>
			<!-- 생년월일 -->
			<div class="name">
				<h3 class="join_title">
					<label for="newbirth">생년월일</label> <strong class="required">*</strong>
				</h3>
				<span class="box int_name"> <input type="text" id="newbirth"
					name="user_birth" class="field" value="${param.user_birth }"
					placeholder="ex) 19940604">
				</span>
			</div>
			<!-- 성별 -->
			<div id="sign_sex">
				<div id="sex_title">
					<h3 class="join_title">
						<strong>성별</strong> <strong class="required">*</strong>
					</h3>
				</div>	
				<c:if test="${param.user_sex eq 'm' }">
					<label for="m">남자</label>
					<input type="radio" id="m" name="user_sex" value="m" checked>
					<label for="w">여자</label>
					<input type="radio" id="w" name="user_sex" value="w">
				</c:if>
				<c:if test="${param.user_sex eq 'w' }">
					<label for="m">남자</label>
					<input type="radio" id="m" name="user_sex" value="m">
					<label for="w">여자</label>
					<input type="radio" id="w" name="user_sex" value="w" checked>
				</c:if>
				<c:if test="${param.user_sex eq none }">
					<label for="m">남자</label>
					<input type="radio" id="m" name="user_sex" value="m">
					<label for="w">여자</label>
					<input type="radio" id="w" name="user_sex" value="w">
				</c:if>
			</div>


			<!-- 회원가입 버튼-->
			<div class="btn_area">
				<input type="submit" id="btnJoin" value="가입하기">
			</div>
		</div>
	</form>
</div>
    

</body>

</html>