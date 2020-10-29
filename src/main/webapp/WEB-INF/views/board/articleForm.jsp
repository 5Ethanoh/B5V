<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  /> 
<%
  request.setCharacterEncoding("UTF-8");
%> 

<head>
<meta charset="UTF-8">
<title>Work Work Work</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
   function readURL(input) {
      if (input.files && input.files[0]) {
	      var reader = new FileReader();
	      reader.onload = function (e) {
	        $('#preview').attr('src', e.target.result);
          }
         reader.readAsDataURL(input.files[0]);
      }
  }  
  function backToList(obj){
    obj.action="${contextPath}/board/listArticles.do";
    obj.submit();
  }
  
  var cnt=1;
  function fn_addFile(){ <%--fn_addFile이 실행 될 때마다--%>
	  $("#d_file").append("<br>"+"<input type='file' name='file"+cnt+"' />"); <%--#은 아이디 .은 클래스 --%>
	  cnt++;
  }  

</script>
 <title>Workspace</title>
</head>
<body>
<h1 style="text-align:center">Are U Ready To Work Bitch!?</h1>
  <form name="articleForm" method="post"   action="${contextPath}/board/addNewArticle.do"   enctype="multipart/form-data">
    <table border="0" align="center">
      	<!-- <tr>
			<td align="right"> 작성자</td>
			<td colspan=2  align="left"><input type="text" size="20" maxlength="100"  value="${member.name }" readonly/> </td>
		</tr>
	    <tr>
		   <td align="right">글제목: </td>
		   <td colspan="2"><input type="text" size="67"  maxlength="500" name="title" /></td>
		</tr>
	 	<tr>
			<td align="right" valign="top"><br>글내용: </td>
			<td colspan=2><textarea name="content" rows="10" cols="65" maxlength="4000"></textarea> </td>
     	</tr> -->
     	<tr>
     		<td><img  id="preview" src="#" width=400 height=400/><br></td>
     	</tr>
     	<tr>
			<td align="center">Select the files : 
			<input type="file" name="imageFileName"  onchange="readURL(this);" /></td>
	   </tr>
			<!--
			<td align="right">이미지파일 첨부</td>
			<td align="left"> <input type="button" value="파일 추가" onClick="fn_addFile()"/></td> -->	
	   <tr>
	      <td colspan="4"><div id="d_file"></div></td>
	   </tr>
	    <tr>
	      <td align="center" colspan="2">
	       <input type="submit" value="Submit" />
	       <input type=button value="Back to List"onClick="backToList(this.form)" />
     	</tr>
    </table>
  </form>
</body>
</html>
