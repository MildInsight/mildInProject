<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form"      uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javaScript" language="javascript" defer="defer">

function loginSubmit(){
	document.detailForm.action = "<c:url value='LoginCheck.do'/>";
	document.detailForm.submit();
}

</script>
<title>로그인페이지</title>
</head>
<body>
	<div id="mainContent">
	<form:form commandName="loginVo" id="detailForm" name="detailForm">
			<table id="loginTable">
				<tbody>
					<tr>
						<td colspan="2" >
							<img src="<c:url value='/images/mildin/mildlog.png' />"  border="0" style="width: 200px ;">
						</td>
					</tr>
					<tr>
						<td>아이디</td>
						<td><form:input path="id" value="1"></form:input></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><form:input path="password" value="2"></form:input></td>
					</tr>
					<tr>
						<td colspan="2" style="width: 100%">
							<span><input type="submit" value="로그인" onclick="loginSubmit(); return false;" ></input></span>							
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<span><input type="submit" value="회원가입" onclick=""></input></span>							
						</td>
					</tr>
				</tbody>
			</table>
		</form:form>
	</div>
</body>
</html>