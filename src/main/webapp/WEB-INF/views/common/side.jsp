<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<script>
	function fn_listMembers(isLogOn,loginForm){
	  if(isLogOn != '' && isLogOn != 'false'){
	    location.href=loginForm;
	  }else{
	    alert("로그인 후 가능합니다.")
	    location.href='/member/loginForm.do?action=/member/listMembers.do';
	  }
	}
</script>

	<h1>사이드 메뉴</h1>
	<%-- 
	<h1>
		<a href="#"  class="no-underline">회원관리</a><br>
	    <a href="#"  class="no-underline">게시판관리</a><br>
    </h1>
	--%>
	<h1>
		<a href="javascript:fn_listMembers('${isLogOn}','${contextPath}/member/listMembers.do?id=${member.id}')" class="no-underline">사원정보관리</a><br>
		<a href="${contextPath}/board/articleForm.do"  class="no-underline">You gotta work bitch</a><br>

	</h1>
	 
