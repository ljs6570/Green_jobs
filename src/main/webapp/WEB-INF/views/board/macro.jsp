<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include  file="../inc/login_header.jsp" %>

	<div>
		<h3 class="myhidden">공지사항</h3>
		<div id="home_question_back_back">
			<div id="home_question_back">
				<!-- 홈 - 공지사항 -->
				<div id="overflow_table">
					<table style="margin: auto;margin-top: 100px;width: 1300px;max-width: 100%;board-bottom: 1px solid black">
						<thead>
							<tr id="home_question">
								<th >번호</th>
								<th style="width: 900px">내용</th>
								<th>등록일</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="list" items="${answer}">
								<tr>
									<td><a href="macro_detail.hm?macro_no=${list.macro_no}">${list.macro_no}</a></td>
									<td><a href="macro_detail.hm?macro_no=${list.macro_no}">${list.macro_content}</a></td>
									<td>${list.macro_update}</td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</div>
				<div>
					<p id="btn_w" style="margin: auto;">
						<a href="${pageContext.request.contextPath}/write_macro.hm">매크로 추가</a>
					</p>
					<!--  시간 남으면 hover시 색 변화 살짝 -->
				</div>
			</div>
		</div>
<%@ include  file="../inc/footer.jsp" %>