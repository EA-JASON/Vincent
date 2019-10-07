<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>帐薄管理--添加</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript" src="${pageContext.request.contextPath}/js/common.js"></script>
</head>

<body leftmargin="0" topmargin="0" onLoad="MM_preloadImages('${pageContext.request.contextPath}/images/login_10.gif','${pageContext.request.contextPath}/images/login_12.gif','${pageContext.request.contextPath}/images/login_09.gif','${pageContext.request.contextPath}/images/login_11.gif')">
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="32" align="left" valign="top" class="text006"><table width="98%"  border="0" cellspacing="0" cellpadding="0">
        <tr valign="top">
          <td>【 账簿管理 】</td>
          <td align="right">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="215" valign="top"><table width="98%"  border="0" cellspacing="0" cellpadding="0">
      <tr align="left" class="bg03">
        <td width="100%" height="29">
          <span class="text001">&nbsp;&nbsp;修改收支记录</span></td>
        </tr>

    </table>
      <form name="myform" method="post" action="/FFMS1/aupdate">
      <table width="98%"  border="0" cellpadding="0" cellspacing="0" class="text008">
        <tr align="center">
          <td width="12%" height="35" align="right">收支类型</td>
          <td width="88%" align="left">
          <select class="inp001">
          	<option>收入</option>
          	<option selected >支出</option>
          </select>
          </td>
        </tr>
        <tr align="center" class="bg04">
          <td width="12%" height="35" align="right">父项目</td>
          <td width="88%" align="left">
          <select class="inp001" name="item_id">
          	<option value="1">工资</option>
          	<option selected value="${account.item.id}" >${account.item.name}</option>
          	<option value="2">奖金</option>
            <option value="3">利息</option>
            <option value="4">股息</option>
            <option value="6">中奖</option>
            <option value="5">基金</option>
          </select>
          </td>
        </tr>
        <tr align="center">
          <td width="12%" height="35" align="right">子项目</td>
          <td width="88%" align="left">
          <select class="inp001">
          	<option>午餐费</option>
          	<option>早餐费</option>
          	<option  selected >晚餐费</option>
          </select>
          </td>
        </tr>
        <tr align="center" class="bg04">
          <td height="35" align="right">收支日期</td>
          <td align="left"><input name="adate" type="date" class="inp001" value="<fn:formatDate value="${account.adate}" pattern="yyyy-MM-dd"></fn:formatDate>"></td>
        </tr>
        <tr align="center">
          <td height="35" align="right">收支家庭成员</td>
          <td align="left">
          <select class="inp001" name="user_id">
          	<option value="1">詹姆斯布朗</option>
          	<option selected value="${account.user.id}">${account.user.realname}</option>
          	<option value="2">斯坦森</option>
            <option value="3">乔布斯</option>
            <option value="4">纪梵希</option>
            <option value="5">路易威登</option>
            <option value="6">古驰</option>
            <option value="7">巴黎世家</option>
            <option value="8">汤姆福特</option>
            <option value="9">奈儿妹妹</option>
            <option value="10">爱马仕</option>
            <option value="11">宝格丽</option>
          </select>
          </td>
        </tr>
        <tr align="center" class="bg04">
          <td height="35" align="right">收支金额</td>
          <td align="left"><input name="amount" type="text" class="inp001" value="${account.amount}"></td>
        </tr>
        <tr align="center">
          <td height="168" align="right" valign="top" ><div class="mar009">备注</div></td>
          <td align="left" valign="top"><textarea name="textarea" class="inp002"></textarea>
         </td>
        </tr>
      </table>
        <input type="hidden" name="id" value="${account.id}">
      </form>
      <table width="98%" border="0" cellpadding="0" cellspacing="0" class="bor001">
        <tr>
          <td width="22%" height="40" align="center" >
          <a href="javascript:document.myform.submit();" target="mainframe" onMouseOver="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/index_12_1.gif',1)" onMouseOut="MM_swapImgRestore()" onMouseDown="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/index_12_2.gif',1)" onMouseUp="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/index_12_1.gif',1)"><img src="${pageContext.request.contextPath}/images/index_12_0.gif" name="Image1" width="75" height="24" border="0" id="Image1"></a>&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="/FFMS1/accountlist" target="mainframe" onMouseOver="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/login_09.gif',1)" onMouseOut="MM_swapImgRestore()" onMouseDown="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/login_11.gif',1)" onMouseUp="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/login_09.gif',1)"><img src="${pageContext.request.contextPath}/images/login_07.gif" name="Image2" width="75" height="24" border="0" id="Image2"></a></td>
          <td width="78%" align="right">&nbsp;          </td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
