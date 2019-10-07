<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>收支项目管理--添加</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript" src="${pageContext.request.contextPath}/js/common.js"></script>
</head>

<body leftmargin="0" topmargin="0" onLoad="MM_preloadImages('${pageContext.request.contextPath}/images/login_10.gif','${pageContext.request.contextPath}/images/login_12.gif','${pageContext.request.contextPath}/images/login_09.gif','${pageContext.request.contextPath}/images/login_11.gif')">
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="32" align="left" valign="top" class="text006"><table width="98%"  border="0" cellspacing="0" cellpadding="0">
        <tr valign="top">
          <td>【 收支项目管理 】</td>
          <td align="right">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="215" valign="top"><table width="98%"  border="0" cellspacing="0" cellpadding="0">
      <tr align="left" class="bg03">
        <td width="100%" height="29">
          <span class="text001">&nbsp;&nbsp;修改收支项目</span></td>
        </tr>

    </table>
      <table width="98%"  border="0" cellpadding="0" cellspacing="0" class="text008">
        <tr align="center">
          <td width="12%" height="35" align="right">收支类型</td>
          <td width="88%" align="left"><span class="text010">
            <select name="select" class="inp005">
              <option selected>收入</option>
              <option>支出</option>
            </select>
          </span></td>
        </tr>
        <form name="myform" method="post" action="/FFMS1/iupdate">
        <tr align="center" class="bg04">
          <td height="35" align="right">父项目</td>
          <td align="left">
          	<select name="select" class="inp005" >
              <option selected name="pItem">${item.PItem.name}</option>
              <option>奖金</option>
              <option>利息</option>
              <option>股息</option>
              <option>基金</option>
              <option>中奖</option>
            </select>
          </td>
        </tr>
        <tr align="center">
          <td height="35" align="right">项目名称</td>
          <td align="left"><input name="name" type="text" class="inp001" value="${item.name}"></td>
        </tr>
         <input type="hidden" name="id" value="${item.id}">
        </form>
      </table>
      <table width="98%" border="0" cellpadding="0" cellspacing="0" class="bor001">
        <tr>
          <td width="22%" height="40" align="center" ><a href="javascript:document.myform.submit();" target="mainframe" onMouseOver="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/index_12_1.gif',1)" onMouseOut="MM_swapImgRestore()" onMouseDown="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/index_12_2.gif',1)" onMouseUp="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/index_12_1.gif',1)"><img src="${pageContext.request.contextPath}/images/index_12_0.gif" name="Image1" width="75" height="24" border="0" id="Image1"></a>&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="/FFMS1/itemlist" target="mainframe" onMouseOver="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/login_09.gif',1)" onMouseOut="MM_swapImgRestore()" onMouseDown="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/login_11.gif',1)" onMouseUp="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/login_09.gif',1)"><img src="${pageContext.request.contextPath}/images/login_07.gif" name="Image2" width="75" height="24" border="0" id="Image2"></a></td>
          <td width="78%" align="right">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
