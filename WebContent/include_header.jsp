<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String userId = (String)session.getAttribute("userId");
%>
<style>
header {
	width:100%;
	height:100px;
	color: white;
	font-size: 15px;

	background:linear-gradient(to bottom,black,rgba(0,0,0,0.1));

}

.logo {
	float: left;
	margin: 20px;
}

.ul {
	float: right;
	margin: 10px;
	list-style-type: none;
}

li {
	float: left;
	color: #FFD700;
	font-weight: bolder;
	margin: 20px;
	list-style-type: none;
}

.down {
	width: 100%;
	height: 40px;
	float: right;
	margin: 20px;
	line-height: 40px;
}

a {
	color: #FFD700;
	text-decoration: none;
	font-size:15px;
}


a:hover{
    color: #ff9900;
}

</style>

<header>

<div class="up">


<div class="logo"><a href='<s:url action="HomeAction"/>'>ロゴ(ホームにいく)</a></div>
	<s:if test="#session.masterFlg">
		<span style="color: red;"><a href='<s:url action="MasterProductChangeAction" />'>管理者</a></span>
	</s:if><s:elseif test="#session.loginFlg">
		ようこそ! <s:property value="#session.firstName"/>さん
	</s:elseif><s:else>
		ようこそ! ゲストさん
	</s:else>

	<ul class="ul"><s:if test="#session.loginFlg">
		<li class="li"><a href='<s:url action="LogoutAction"/>'>ログアウト　<img src="./images/icon/kagi2.png" width="15" height="20"></a></li><li>|</li>
		<li class="li"><a href='<s:url action="MyPageAction"/>'>マイページ　<img src="./images/icon/mypage.png" width="15" height="20"></a></li>
	</s:if><s:else>
		<li class="li"><a href='<s:url action="LoginAction"/>'>ログイン　<img src="./images/icon/kagi1.png" width="15" height="20"></a></li>
	</s:else>
	<li>|</li>
<li>
<s:if test="cartList.isEmpty()">
			<a href='<s:url action="CartProductAction"/>'>カート</a>
		</s:if></li>
		<li><s:else>
			<a href='<s:url action="CartProductAction"/>'>カート<img src="./images/icon/kagi.png" width="20" height="20"></a></s:else></li>
	</ul>

	</div>
<!-- 検索ボックスをインクルード -->
	<br>
	<jsp:include page="headerSearch.jsp" />

	<div class="down">

	</div>
</header>