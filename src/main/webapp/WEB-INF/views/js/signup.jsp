<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/signup_header.jsp"%>
<style>
.codebtn {
	cursor: pointer;
	outline: none;
	width: 50px;
	height: 20px;
	border: none;
	color: white;
	background-color: #2F95B1;
	border-radius: 8px;
	font-family: 'GmarketSansMedium';
}

#btnJoin {
	font-size: 18px;
	font-weight: bold;
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
#pwcheck{
	color: crimson;
    font-size: 10px;
    text-align: right;
}
#codeTest{
	color:crimson;
	font-size:13px;
	font-weight:bold;
}
</style>

<div>
	<p style="text-align: center">
		<a href="home.js"> <img src="resources/image/logo2.png"
			style="vertical-align: middle; margin: auto; padding: 40px; width: 370px;">
		</a>
	</p>
</div>

<!-- wrapper -->
<div id="wrapper">
	<form method="post" action="signup_2.js" name="join" id="sign1">
		<fieldset style="border: none;">

			<div id="content">
				<div class="email">
					<h3 class="join_title">
						<label for="newid">아이디</label> <strong class="required">*</strong>
					</h3>
					<span class="box int_email"> <input type="text" id="newid"
						name="user_email" class="field" placeholder="이메일을 입력해주세요">
					</span>
				</div>
				<div class="number">
					<div class="btn_area_s">
						<h3 class="join_title">
							<label for="signCode">인증코드</label> <strong class="required">*</strong>
						</h3>
						<input type="button" class="codebtn" value="인증요청">
					</div>
						<p id="codeTest"></p>
					<span class="box int_id">
					 <input type="text" id="signCode" name="code" class="field">
					 <input type="hidden" id="hiddenCode">
					</span>
				</div>
				<div class="password">
					<h3 class="join_title">
						<label for="newpw">비밀번호</label> <strong class="required">*</strong>
					</h3>
					<span class="box int_pass"> <input type="password"
						id="newpw" name="user_pass" class="field" placeholder="비밀번호는 영어와 숫자를 포함해주세요">
						
					</span>
				</div>
				<div class="password_check">
					<h3 class="join_title"></h3>
						<label for="newpw_check">비밀번호 재확인</label>
						<p id="pwcheck"></p>
 
					
					<span class="box int_pass_check"> <input type="password"
						id="newpw_check" name="user_pass" class="field"
						placeholder="비밀번호는 영어와 숫자를 포함해주세요">
					</span> <span class="error_next_box"></span>
				</div>
				<div class="name">
					<h3 class="join_title">
						<label for="newname">이름</label> <strong class="required">*</strong>
					</h3>
					<span class="box int_name"> <input type="text" id="newname"
						name="user_name" class="field">
					</span> <span class="error_next_box"></span>
				</div>
				<div class="phone">
					<h3 class="join_title">
						<label for="newphone">휴대전화</label> <strong class="required">*</strong>
					</h3>
					<span class="box int_mobile"> <input type="tel"
						id="newphone" name="user_mobile" class="field"	placeholder="'-' 빼고 입력해주세요">
					</span>
				</div>
				<div class="name">
					<h3 class="join_title">
						<label for="newbirth">생년월일</label> <strong class="required">*</strong>
					</h3>
					<span class="box int_name"> <input type="date" id="newbirth"
						name="user_birth" class="field" placeholder="ex) 19940604">
					</span> <span class="error_next_box"></span>
				</div>
				<div id="sign_sex">
					<div id="sex_title">
						<h3 class="join_title">
							<strong>성별</strong> <strong class="required">*</strong>
						</h3>
					</div>
					<label for="m">남자</label> <input type="radio" id="m"
						name="user_sex" value="m"> <label for="w">여자</label> <input
						type="radio" id="w" name="user_sex" value="w">
				</div>
				<div class="btn_area">
					<input type="submit" id="btnJoin" value="인증확인">
				</div>
			</div>
		</fieldset>
	</form>
	<script>
		$(function() {
			let regid = /^[0-9a-zA-Z]+(.[_a-z0-9-]+)*@(?:\w+\.)+\w+$/;
			let regpass = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]*$/;
			let regname = /^[가-힣]*$/;
			let regmobile= /^010\d{4}\d{4}$/

			$(".codebtn").on("click", function() {
				$("#codeTest").text("인증코드가 전송되었습니다.")
				
				$.ajax({
					url:"mail.js",
					type:"POST",
					dataType:"text",
					data:{"user_email":$("#newid").val()},
					error:function(xhr, status, msg){
						alert(status+"/"+msg);
					},
					success:function(text){
						console.log(text);
						$("#hiddenCode").val(text);
					}
				});//ajax
		
				
			});
		
			$("#sign1").on(	"submit", function() {
				if ($("#newid").val() == "" || !(regid.test($("#newid").val()))) {
					alert("아이디를 확인해주세요.");
					$("#newid").focus();
					return false;
				}
				if ($("#signCode").val() == "") {
					alert("인증코드를 입력해주세요");
					$("#signCode").focus();
					return false;
				}
				if($("#signCode").val()!=$("#hiddenCode").val()){
					$("#codeTest").text("인증코드가 맞지않습니다.");
					return false;
				}
				if ($("#newpw").val() == "" || $("#newpw_check").val() == "" || !(regpass.test($("#newpw").val()))|| !(regpass.test($("#newpw_check").val()))) {
					alert("비밀번호를 확인해주세요.");
					$("#newpw").focus();
					return false;
				}
				if (!($("#newpw").val() == ($("#newpw_check").val()))) {
					$("#pwcheck").text("비밀번호가 다릅니다.");
					return false;
				}
				if ($("#newname").val() == "" || !(regname.test($("#newname").val()))) {
					alert("이름을 확인해주세요.");
					$("#newname").focus();
					return false;
				}
				if ($("#newphone").val() == ""|| !(regmobile.test($("#newphone").val()))) {
					alert("휴대번호를 확인해주세요.");
					$("#newphone").focus();
					return false;
				}
				if ($("#newbirth").val() == "") {
					alert("생년월일을 입력해주세요.");
					$("#newbirth").focus();
					return false;
				}
				if (!($("input[name='user_sex']:checked").val())) {
					alert("성별을 체크해주세요");
					return false;
				}

					});

		});
	</script>
</div>


</body>

</html>