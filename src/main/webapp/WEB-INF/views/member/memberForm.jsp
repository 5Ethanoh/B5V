<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
   request.setCharacterEncoding("UTF-8");
%> 
<!DOCTYPE html>
<html>
<head>
      <link href="<%=request.getContextPath()%>/resources/css/memberForm.css" rel="stylesheet" type="text/css">
<title>사원 인증</title>
<style>
   .text_center{
     text-align:center;
   }
</style>
<script type="text/javascript" src="/resources/js/jquery-3.5.1.js"></script>
<script type="text/javascript">
	function check_id(){
		//var idCheck = 0;
		//var inputed = $('#idzon').val();
		//console.log(inputed);
		//alert($("#id").val());
		
		$.ajax({
			data : {"id":$("#id").val()},
			url : "/member/checkEmpno.do",
			type : "post",
			dataType : "json",
			contentType : "application/json; charse=UTF-8",
			success : function(data){
				alert(data.check);
				 //여기서 데이터가 왜 0이 출력 되는지 확인해보고 밑에 코드들 전부 수정해야할듯
				
				if(data == "1"){
					alert("가입 가능한 사원 번호 입니다.");
					$("#idCheck").attr("value", "Y")
				}else if(data == "0"){
					alert("가입 불가한 사원 번호 입니다.");

				}
			}
		}); 
	}

</script>
</head>
<body>
	<div class="signup-page">
		<h1 class="text_center">사원 인증</h1>
	<div class="form">
	<form class="login-form" method="post" action="${contextPath}/member/addMember.do">
	   	<table>
	   	  <tr align="center">
			<td width="400">
	      <input type="text" class="idCheck" id="id" name="id" placeholder="사원번호를 인증해주세요" autofocus id ="id" >
	      <button class="idCheck" type="button" onclick="check_id();" value="N">인증</button>
			</td>
	      </tr>
	    </table>
	    <table>  
	   	 <tr align="center">
      	  <td>
      	  	<input type="password" placeholder="비밀번호를 입력해주세요" name="pwd" value=""/>
		  	<input type="text" placeholder="이름을 입력해주세요" name="name" value=""/>
		  </td>
		 </tr>
		 </table>
		 <table>
		 <tr align="center">
		  	<td width="200"><input type="submit" value="인증받기"/></td>
		  	<td width="200"><input type="reset" value="다시입력"/></td>
		  </tr>
		</table>
	    <!--  <tr>
	       <td width="200"><p align="right">이메일</td>
	       <td width="400"><p><input type="text" name="email"></td>
	    </tr>
	    !-->
		
	</form>
	</div>
	</div>
</body>
