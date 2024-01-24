<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../inc/login_header.jsp"%>

<style>
.main {
	font-family: 'GmarketSansLight';
}

#btnfont a {
	color: white !important;
	font-weight: bold;
}

.tables {
	overflow: auto;
	border: 1px solid #eee;
	margin: 10px;
}

.main {
	margin: auto;
	padding: 125px;
}

#adminPlus {
	background-color: #eee;
	position: absolute;
	width: 800px;
	height: 300px;
	top: 420px;
	left: 530px;
}

#opnPlus {
	background-color: #00A3FFBD;
	color: white;
	font-weight: bold;
	
}
</style>

<script>
	$(function() {
		$("#adminPlus").hide();

		$("#opnPlus").on("click", function() {
			$("#adminPlus").toggle();

		});

	});
</script>
<div class="main">
	<div>
		<h4>관리자를 관리해보세요</h4>
		<p>
			<strong>※ 관리자로 추가한 이메일로 메일이 보내져요!</strong>
		</p>

	</div>
	<div class="tables">
		<table class="table table-bordered">
			<caption>〈〈현재관리자 LIST〉〉</caption>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">이름</th>
					<th scope="col">이메일</th>
					<th scope="col">권한</th>
					<th scope="col">등록일</th>
					<th scope="col">변경</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="admin" items="${admin_list }" varStatus="status">
					<tr>
						<td>${admin.user_no }</td>
						<td>${admin.user_name }</td>
						<td>${admin.user_email }</td>
						<td>${admin.grade_name }</td>
						<td>${admin.user_date }</td>
						<td id="btnfont"><a
							href="admin_delete.js?user_no=${admin.user_no }" class="btn"
							style="background-color: #FFC633BD;">해제하기</a></td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
		<c:if test="${login.grade_no eq 1 }">
			<div id="btnfont" class="text-right">
				<input type="button" value="추가하기" id="opnPlus" class="btn">
			</div>
		</c:if>
	</div>

	<div class="tables">
		<table class="table table-bordered">
			<caption>〈〈현재회원 LIST〉〉</caption>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">이름</th>
					<th scope="col">이메일</th>
					<th scope="col">생년월일</th>
					<th scope="col">휴대폰번호</th>
					<th scope="col">등록일</th>
					<th scope="col">변경</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="user" items="${list }" varStatus="status">
					<tr>
						<td>${user.user_no }</td>
						<td>${user.user_name }</td>
						<td>${user.user_email }</td>
						<td>${user.user_birth }</td>
						<td>${user.user_mobile }</td>
						<td>${user.user_date }</td>
						<td id="btnfont"><a
							href="kill_user.js?user_no=${user.user_no }" class="btn"
							style="background-color: #FF6666ED;">삭제하기</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<div id="adminPlus">
	

</div>
<%@ include file="../inc/footer.jsp"%>