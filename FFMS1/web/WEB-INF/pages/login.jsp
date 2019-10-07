<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>家庭财务管理系统</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript" src="${pageContext.request.contextPath}/js/common.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
  <script>
    $(function () {
      $("a[name=Login]").click(function () {
        if($("input[id=username]").val()==""||$("input[id=pwd]").val()==""){
         alert("用户名或密码不能为空!")
          return false;
        }else {
         return true;
        }
      })
    })

  </script>
<style type="text/css">
<!--
body {
	background-color: #c4c3c3;
}
-->
</style></head>


<body onLoad="MM_preloadImages('${pageContext.request.contextPath}/images/login_10.gif','${pageContext.request.contextPath}/images/login_09.gif')">
<form action="/FFMS1/index" method="post" name="myform">
<table width="502" border="0"  align="center" cellpadding="0" cellspacing="0" class="mar001">
  <tr>
    <td background="${pageContext.request.contextPath}/images/login_02.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="2%" align="left"><img src="${pageContext.request.contextPath}/images/login_03.gif" width="12" height="30"></td>
        <td width="49%" align="left" class="text001">用户登录</td>
        <td width="49%" align="right"><img src="${pageContext.request.contextPath}/images/login_01.gif" width="11" height="30"></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="247" valign="top"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr valign="top">
        <td width="35%" height="232"><img src="${pageContext.request.contextPath}/images/login_05.gif" width="178" height="269"></td>
        <td width="65%" align="right" background="${pageContext.request.contextPath}/images/login_06.gif" class="bg01"><img src="${pageContext.request.contextPath}/images/login_04.gif" width="268" height="47" class="mar002">
          <table width="90%" height="125"  border="0" cellpadding="0" cellspacing="0" class="mar003">
          <tr>
              <center><span id="showinfo" style="color: red;font-size: 16px;">${errorinfo}</span></center>
            <td width="32%" height="38" align="right" class="text002">用户名</td>
            <td width="68%" align="left" valign="middle"><input name="username" type="text" class="inp001" id="username" ></td>
          </tr>
          <tr>
            <td height="37" align="right" class="text002">密码</td>
            <td align="left" valign="middle"><input name="pwd" type="password" class="inp001" id="pwd" ></td>
          </tr>
          <tr>
            <td height="50">&nbsp;</td>
            <td align="left" valign="bottom"><a href="javascript:document.myform.submit();" name="Login" onMouseOver="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/login_10.gif',1)" onMouseOut="MM_swapImgRestore()" onMouseDown="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/login_12.gif',1)" onMouseUp="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/login_10.gif',1)"><img src="${pageContext.request.contextPath}/images/login_08.gif" name="Image1" width="75" height="24" border="0" id="Image1"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:window.close();" onMouseOver="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/login_09.gif',1)" onMouseOut="MM_swapImgRestore()" onMouseDown="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/login_11.gif',1)" onMouseUp="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/login_09.gif',1)"><img src="${pageContext.request.contextPath}/images/login_07.gif" name="Image2" width="75" height="24" border="0" id="Image2"></a></td>
            </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
