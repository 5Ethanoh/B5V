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
<title>Employee List</title>
</head>
<script>
	<%--function button_event(){
		if (confirm("정말 삭제하시겠습니까??") == true){    //확인
	    	document.form.submit();
		}else{   //취소
	    	return;
		}
	}

	function fn_listMembers(isLogOn,loginForm){
	  if(isLogOn != '' && isLogOn != 'false'){
		    location.href=loginForm;
	  }else{
	    alert("로그인 하세요")
	    location.href='/member/loginForm.do?action=/member/listMembers.do';
	  }
	}
	--%>
</script>
<body>
<table border="1"  align="center"  width="80%">
    <tr align="center"  bgcolor="#76b852">
      <td ><b>Employee ID</b></td>
      <td><b>Password</b></td>
      <td><b>Name</b></td>
      <td><b>Join Date</b></td>
      <td><b>Delete</b></td>
   </tr>
    
 <c:forEach var="member" items="${membersList}" >     
   <tr align="center">
      <td>${member.id}</td>
      <td>${member.pwd}</td>
      <td>${member.name}</td>
      <td>${member.joinDate}</td>
      <!-- <input type="button" value="삭제하기" onclick="button_event();"> -->
      <td><a onclick="return confirm('Are you sure to delete the Account?')" href="${contextPath}/member/removeMember.do?id=${member.id}" class="cls1"><p class="cls2">Delete</p></a></td>
      <!-- <a class="cls1"  href="javascript:fn_listMembers('${isLogOn}','${contextPath}/member/removeMember.do?id=${member.id}')"><p class="cls2">삭제하기</p></a> -->
    </tr>
  </c:forEach>   
</table>
</body>
</html>
