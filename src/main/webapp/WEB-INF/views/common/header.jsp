<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<table border=0  width="100%">
  <tr>
     <td>
		<a href="${contextPath}/main.do">
			<img src="${contextPath}/resources/image/ktds.jpg" width="150" height="100" />
		</a>
     </td>
     <td>
       <h1><font size=30>Dangerous Goods Auto-Checking</font></h1>
     </td>
     
     <td>
       <!-- <a href="#"><h3>로그인</h3></a> -->
       <c:choose>
          <c:when test="${isLogOn == true  && member!= null}">
            <h3>환영합니다. ${member.name }님!</h3>
            <a href="${contextPath}/member/logout.do"><h3>로그아웃</h3></a>
            <a href="${contextPath}/member/modMemberForm.do?id=${member.id}"><h3>정보수정</h3></a>
          </c:when>
          <c:otherwise>
	        <a href="${contextPath}/member/loginForm.do"><h3>로그인</h3></a>
	        <a href="${contextPath}/member/memberForm.do"><h3>사원인증</h3></a>
	      </c:otherwise>
	   </c:choose>     
     </td>
  </tr>
</table>