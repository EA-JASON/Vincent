<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>报表统计</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript" src="${pageContext.request.contextPath}/js/common.js"></script>
  <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
<script>
function selectBb() {
	alert(document.all("select1").value);
	document.all("exlframe").src = document.all("select1").value;
}
</script>

</head>

<body leftmargin="0" topmargin="0" onLoad="MM_preloadImages('${pageContext.request.contextPath}/images/index_12_1.gif','${pageContext.request.contextPath}/images/index_12_2.gif')">
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="32" align="left" valign="top" class="text006"><table width="98%"  border="0" cellspacing="0" cellpadding="0">
        <tr valign="top">
          <td>【 报表统计 】</td>
          <td align="right"><img src="${pageContext.request.contextPath}/images/icon01.gif" width="35" height="21" align="absmiddle"><span class="text010">报表类型
            <select name="select1" class="inp004" onChange="selectBb()">
              <option selected  value="bbtj_01.html">收支汇总报表</option>
              <option value="${pageContext.request.contextPath}/bbtj_02">年度收支统计表</option>
              <option value="${pageContext.request.contextPath}/bbtj_03">收入构成图表</option>
              <option value="${pageContext.request.contextPath}/bbtj_04">支出构成图表</option>
              <option value="${pageContext.request.contextPath}/bbtj_05">家庭成员收支表</option>
            </select>
          </span>		  </td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="215" valign="top"><table width="98%"  border="0" cellspacing="0" cellpadding="0">
      <tr align="left" class="bg03">
        <td width="100%" height="29"><span class="text001">&nbsp;&nbsp;收支汇总报表</span></td>
      </tr>
    </table>
      <table width="98%"  border="0" cellpadding="0" cellspacing="0" class="bor002">
        <tr>
          <td width="10%" height="35" align="right" class="text011">统计年份</td>
          <td width="12%" align="left"><span class="text010">
            <select name="select" class="inp003">
              <c:forEach items="${accounts}" var="acc">
              <option selected><fn:formatDate value="${acc.adate}" pattern="yyyy"></fn:formatDate>年</option>
              </c:forEach>
            </select>
          </span></td>
          
          <td width="9%" height="35" align="right" class="text011">开始日期</td>
          <td width="14%" align="left"><span class="text010">
            <select name="select" class="inp005">
              <c:forEach items="${accounts}" var="acc">
                <option><fn:formatDate value="${acc.adate}" pattern="yyyy-mm-dd"></fn:formatDate></option>
              </c:forEach>
            </select>
          </span></td>
          <td width="10%" align="right" class="text011">结束日期</td>
          <td width="19%" align="left"><span class="text010">
            <select name="select" class="inp005">
            <c:forEach items="${accounts}" var="acc">
              <option><fn:formatDate value="${acc.adate}" pattern="yyyy-mm-dd"></fn:formatDate></option>
            </c:forEach>
            </select>
          </span></td>
          <td width="29%"><a href="#" target="mainframe" onMouseOver="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/index_12_1.gif',1)" onMouseOut="MM_swapImgRestore()" onMouseDown="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/index_12_2.gif',1)" onMouseUp="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/index_12_1.gif',1)"><img src="${pageContext.request.contextPath}/images/index_12_0.gif" name="Image1" width="75" height="24" border="0" id="Image1"></a></td>
        </tr>
      </table>
      <table width="98%" border="0" cellpadding="0" cellspacing="0" class="bor003">
        <tr>
          <td height="40" align="left" valign="top" ><iframe name="exlframe" src="${pageContext.request.contextPath}/bbtj_01" width="100%" height="400px" frameborder="0" align="top"></iframe>         </td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
