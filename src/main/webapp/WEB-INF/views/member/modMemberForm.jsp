<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>    

<!DOCTYPE html>
<html>
<head>
<link href="<%=request.getContextPath()%>/resources/css/modmemberForm.css" rel="stylesheet" type="text/css">
<title>로그인창</title>
<title>사원 정보 수정창</title>
<style>
   .text_center{
     text-align:center;
   }
</style>
</head>
<body>
	<div class="mod-page">
		<h1  class="text_center">사원 정보 수정창</h1>
	<div class="form">
	<form class="login-form" method="post"  action="${contextPath}/member/modMember.do">
		<table>
	   		<tr align="center">
	      		<td><input class="form-control" type="text" id="id" name="id" placeholder="사원번호를 인증해주세요" value="${member.id}" readonly="readonly"/>
					<input type="password" name="pwd" placeholder="패스워드를 변경해주세요" value=""/>		
					<input type="text" name="name" value="${member.name}"/>
				</td>
	    	</tr>
	    </table>
		<!-- 
	    <tr>
	       <td width="200"><p align="right">이메일</td>
	       <td width="400"><p><input type="text" name="email"></td>
	    </tr>
	    -->
	    <table>
	    	<tr align="center">
	       		<td width="200"><input type="submit" value="수정하기"/></td>
		   		<td width="200"><input type="reset" value="다시입력"/></td>
	    	</tr>
		</table>
	</form>
	</div>
	</div>
</body>
</html>