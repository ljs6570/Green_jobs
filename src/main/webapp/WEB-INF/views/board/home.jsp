<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include  file="../inc/login_header.jsp" %>

<div class="container home_body">

  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">홈</a></li>
    <li><a data-toggle="tab" href="#menu1">공지사항</a></li>
    <li><a data-toggle="tab" href="#menu2">내 문의내역</a></li>
  </ul>

  <div class="tab-content">

    <div id="home" class="tab-pane fade in active">
        <h3 class="myhidden">HOME</h3>
        <p>feel in like 게시판입니다.</p>
        <div class="home_notice"> <!-- 홈 - 공지사항 -->
                <!-- <h3>※공지사항※</h3> -->
                <table>
                    <caption class="myhidden" >※공지사항※</caption>
                    <tbody>
                        <tr>
                            <td id="notice">※공지사항※ </td>
                            <td id="notice_title"><a href="notice_detail.hm?board_no=${readNotice.board_no}"> ${readNotice.board_title}</a></td>
                        </tr>
                    </tbody>
                </table>
        </div>	
        <div id="line1"></div>
        <div id="home_question_back_back">
            <div id="home_question_back"> <!-- 홈 - 문의사항 -->
                <table class="table">
                    <thead>
                        <tr id="home_question">
                            <th>번호</th>
                            <th>작성자</th>
                            <th>제목</th>
                            <th>조회수</th>
                            <th>상태</th>
                            <th>작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="list" items="${readQue}" varStatus="status">
                        <tr>
                            <td><a href="detail_que.hm?board_no=${list.board_no}">${paging.listtotal-paging.pstartno-status.index}</a></td>
                            <td><a href="detail_que.hm?board_no=${list.board_no}">${list.user_name}</a></td>
                            <td><a href="detail_que.hm?board_no=${list.board_no}">${list.board_title}</a></td> <!-- 제목 클릭시 디테일 -->
                            <td>${list.board_hit}</td>
                            <td>${list.status_no}</td>
                            <td>${list.board_date}</td>
                        </tr>
                   </c:forEach>
                    </tbody>
                    <tfoot>
			<tr>
				<td colspan="40" class="text-center"> 
				
					<ul class="pagination">
						<c:if test="${paging.start>=paging.bottomlimit}" >
						<li>
							<a href="${pageContext.request.contextPath}/home.hm?pstartno=${(paging.start-2)*paging.onepagelimit}">이전</a>
						</li>
						</c:if>
							
						<c:forEach begin="${paging.start}" end="${paging.end}" var="i">
							<li <c:if test="${paging.current==i}" >class="active"</c:if>>
							
								<a href="${pageContext.request.contextPath}/home.hm?pstartno=${(i-1)*paging.onepagelimit}">${i}</a>
							</li>
						</c:forEach>
						
						<c:if test="${paging.end < paging.pagetotal}" >
						<li>
							<a href="${pageContext.request.contextPath}/home.hm?pstartno=${paging.end*paging.onepagelimit}">다음</a>
						</li>
						</c:if>
						
					</ul>
				</td>
			</tr>
			
		</tfoot>
                </table>
				 <div> <!-- 문의사항 작성 -->
                    <p  id="btn_w"><a href="${pageContext.request.contextPath}/write_user.hm">글작성하기</a></p>  <!--  시간 남으면 hover시 색 변화 살짝 -->
                </div>
            </div>  <!-- 홈 - 문의사항 -->
               
           


        </div>


    </div>

    <div id="menu1" name="menu1" class="tab-pane fade">
      <h3 class="myhidden">공지사항</h3>
        <div id="home_question_back_back">
            <div id="home_question_back"> <!-- 홈 - 공지사항 -->
                <table class="table">
                    <thead>
                        <tr id="home_question">
                            <th>번호</th>
                            <th>제목</th>
                            <th>조회수</th>
                            <th>등록일</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="list" items="${noticeList}" >
                        <tr>
                            <td><a href="notice_detail.hm?board_no=${list.board_no}">${list.board_title}</a>${list.board_no}</td>
                            <td><a href="notice_detail.hm?board_no=${list.board_no}">${list.board_title}</a></td> <!-- 제목 클릭시 디테일 -->
                            <td>${list.board_hit}</td>
                            <td>${list.board_date}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            	<div> 
                    <p  id="btn_w"><a href="${pageContext.request.contextPath}/write_notice.hm">글작성하기</a></p>  <!--  시간 남으면 hover시 색 변화 살짝 -->
                </div>
            </div>  <!-- 홈 - 공지사항 -->
        
         </div>

    </div>

    <div id="menu2" class="tab-pane fade">
        <h3 class="myhidden">내 문의 내역</h3>
        <div id="home_question_back_back">
            <div id="home_question_back"> <!-- 홈 - 공지사항 -->
                <table class="table">
                    <thead>
                        <tr id="home_question">
                            <th>번호</th>
                            <th>작성자</th>
                            <th>제목</th>
                            <th>조회수</th>
                            <th>공개여부</th>
                            <th>상태</th>
                            <th>등록일</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="list" items="${myQueList}">
                        <tr>
                            <td>${list.board_no}</td>
                            <td>${list.user_name}</td>
                            <td>${list.board_title}</td> <!-- 제목 클릭시 디테일 -->
                            <td>${list.board_hit}</td>
                            <td>${list.board_open}</td> <!-- c:if로 true이면 공개로 false이면 비공개로 -->
                            <td>${list.status_no}</td><!-- c:if로 사용자로 로그인하고 답변대기라면 수정 삭제 버튼 나오게-->
                            <td>${list.board_date}</td>
                        </tr>
                       </c:forEach>
                    </tbody>
                </table>
            
            </div>  <!-- 홈 - 공지사항 -->
        
         </div>
    </div>
   
  </div>
</div>

<%@ include  file="../inc/footer.jsp" %>
