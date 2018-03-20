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
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
<title>新商品追加</title>

<style type="text/css">

</style>

</head>

<body>

<jsp:include page="include_header.jsp" />



	<div class="titleName">
		<h2>新商品追加画面</h2>
	</div>

	<div class="instruction">
		<h3>追加したい商品情報を入力してください。</h3>
	</div>

	<s:iterator value="errorMessageList">
		<span style="color:red"><s:property/></span>
	</s:iterator>

	<div class="main">
			<table>
				<s:form action="MasterAddConfirmAction"  method="post" enctype="multipart/form-data">
					<tr>
						<td>
							<label>商品名:</label>
						</td>
						<td>
							<input type="text" name="itemName" value="" />
						</td>
					</tr>

					<tr>
						<td>
							<label>商品名(ひらがな):</label>
						</td>
						<td>
							<input type="text" name="itemKanaName" value="" />
						</td>
					</tr>

					<tr>
						<td>
							<label>価格:</label>
						</td>
						<td>
							<input type="text" name="itemPrice" value="" />円
						</td>
					</tr>
					<tr>
						<td>
							<label>個数:</label>
						</td>
						<td>
							<select name="itemStock">
								<option value="1" selected="selected">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>

							</select>
						</td>
					</tr>

					<!-- 商品画像 -->
					<tr>
						<td>画像</td>
						<td width="22%">
							<div align="right"></div>
						</td>
					</tr>
					<tr>
						<td width="78%"><input type="text" name="imageName"/></td>
					</tr>

					<!-- 登録ボタン -->
					<tr>
						<td><s:submit value="登録"/></td>
					</tr>

				</s:form>
			</table>
		</div>

<jsp:include page="include_footer.jsp" />


</body>
</html>