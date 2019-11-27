<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/button.css">
<link rel="stylesheet" type="text/css" href="./css/tableform.css">
<link rel="stylesheet" type="text/css" href="./css/header_h1.css">
<meta charset="UTF-8">
<title>パスワード再設定確認画面</title>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="contents">
	<h1>パスワード再設定確認画面</h1>

		<table class="vertical-list-table">
			<tr>
				<th scope="row"><s:label value="ユーザーID"/></th>
				<td><s:property value="userId"/></td>
			</tr>
			<tr>
				<th scope="row"><s:label value="新しいパスワード"/></th>
				<td><s:property value="concealedPassword"/></td>
			</tr>
		</table>
		<s:form action="ResetPasswordCompleteAction">
			<div class="btn_position">
				<s:submit value="パスワード再設定" class="btn"></s:submit>
			</div>
		</s:form>
		<s:form action="ResetPasswordAction">
			<div class="btn_position">
				<s:submit value="戻る" class="btn"></s:submit>
			</div>
			<s:hidden id="backFlg" name="backFlg" value="1"></s:hidden>
		</s:form>
</div>
</body>
</html>