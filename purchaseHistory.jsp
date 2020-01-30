<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<link rel="stylesheet" type="text/css" href="./css/style.css">
<link rel="stylesheet" href="./css/cartAndSettlement.css">
<title>商品購入履歴一覧画面</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="contents">
		<h1>商品購入履歴画面</h1>
		<s:if
		test="purchaseHistoryInfoDTOList!=null && purchaseHistoryInfoDTOList.size()>0">

			<table class="horizontal-list-table">
				<thead>
					<tr>
						<th>商品名</th>
						<th>ふりがな</th>
						<th>商品画像</th>
						<th>発売会社名</th>
						<th>発売年月日</th>
						<th>値段</th>
						<th>個数</th>
						<th>合計金額</th>
						<th>宛先名前</th>
						<th>宛先住所</th>
					</tr>
				<tbody>
					<s:iterator value="purchaseHistoryInfoDTOList">
						<tr>
							<td><s:property value="productName" /></td>
							<td><s:property value="productNameKana" /></td>
							<td><img src="<s:property value = "imageFilePath"/>"></td>
							<td><s:property value="releaseCompany" /></td>
							<td><s:property value="releaseDate" /></td>
							<td><s:property value="price" /><span>円</span></td>
							<td><s:property value="productCount" />個</td>
							<td><s:property value="subtotal"/>円</td>
							<td><s:property value="familyName" /><span>　</span><s:property value="firstName" /></td>
							<td><s:property value="userAddress" /></td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
			<div class="submit_btn_box">
				<s:form action="DeletePurchaseHistoryAction">
					<s:submit value="履歴削除" class="submit_btn" />
				</s:form>
			</div>
		</s:if>
		<s:else>
			<div class="info">商品購入履歴情報がありません。</div>
		</s:else>
	</div>
</body>
</html>