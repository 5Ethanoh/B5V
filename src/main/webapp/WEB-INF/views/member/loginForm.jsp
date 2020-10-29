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
  <!-- <meta charset="UTF-8">  -->
<link href="<%=request.getContextPath()%>/resources/css/loginForm.css" rel="stylesheet" type="text/css">
<title>로그인창</title>
<c:choose>
	<c:when test="${result=='loginFailed' }">
	  <script>
	    window.onload=function(){
	      alert("사원번호나 비밀번호가 틀립니다.다시 로그인 하세요!");
	    }
	  </script>
	</c:when>
</c:choose>  
</head>

<body>

<div class="login-page">
<h1>Welcome!</h1>
  <div class="form">
    <form class="login-form" name="frmLogin" method="post"  action="${contextPath}/member/login.do">
      <input type="text" placeholder="사원번호를 입력해주세요" name="id" value=""/>
      <input type="password" placeholder="비밀번호를 입력해주세요" name="pwd" value=""/>
      <button>login</button>
    </form>
  </div>
</div>

</body>
</html>
