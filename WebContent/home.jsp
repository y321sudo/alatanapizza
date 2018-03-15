<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta http-equiv="Content-Style-Type" content="text/css"/>
<meta http-equiv="Content-Script-Type" content="text/javascript"/>
<meta http-equiv="imagetoolbar" content="no"/>
<meta name="description" content="">
<meta name="keywords" content=""/>
<title>alatanapizza HOME画面</title>
<style type="text/css">
/*========TAG LAYOUT========*/
/*========ID LAYOUT========*/
</style>
</head>
<body>

<!-- ヘッダーをインクルード -->
<jsp:include page="headerSearch.jsp" />

	<div id="main">
		<div id="top">
		</div>
		<div>
			<h3>ログインフォームへ</h3>
			<s:form action="LoginAction">
				<s:submit value="ログインフォームへ"/>
			</s:form>
		</div>
		<div>
			<h3>商品フォームへ</h3>
			<s:form action="ProductListAction">
				<s:submit value="商品フォームへ"/>
			</s:form>
		</div>


	</div>

</body>
</html>