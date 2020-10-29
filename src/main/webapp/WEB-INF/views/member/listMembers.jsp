<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>    


<html>
<head>
<meta charset=UTF-8">
<title>사원 정보 목록창</title>
</head>
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
<body>
<table border="1"  align="center"  width="80%">
    <tr align="center"  bgcolor="grey">
      <td ><b>사원번호</b></td>
      <td><b>비밀번호</b></td>
      <td><b>이름</b></td>
      <td><b>가입일</b></td>
      <td><b>삭제</b></td>
      <td><b>수정</b></td>
   </tr>
    
 <c:forEach var="member" items="${membersList}" >     
   <tr align="center">
      <td>${member.id}</td>
      <td>${member.pwd}</td>
      <td>${member.name}</td>
      <td>${member.joinDate}</td>
      <td><a  class="cls1"  href="javascript:fn_listMembers('${isLogOn}','${contextPath}/member/removeMember.do?id=${member.id}')"><p class="cls2">삭제하기</p></a></td>
      <td><a  class="cls1"  href="javascript:fn_listMembers('${isLogOn}','${contextPath}/member/modMemberForm.do?id=${member.id}')"><p class="cls2">수정하기</p></a></td> 
    </tr>
  </c:forEach>   
</table>
</body>
</html>
