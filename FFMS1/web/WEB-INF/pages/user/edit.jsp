<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>家庭成员管理--编辑</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
  <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
<script language="JavaScript" type="text/JavaScript" src="${pageContext.request.contextPath}/js/common.js"></script>
  <script>
    $(function () {
      $("a[name=update]").click(function () {
        if($("input[id=pwd]").val()!=$("input[id=rpwd]").val()){
          alert("确认密码必须一致!")
          return false;
        }else if($("input[id=pwd]").val()==""||$("input[id=rpwd]").val()==""){
          alert("密码不能为空!")
          return false;
        }
      })
    })
  </script>
</head>

<body leftmargin="0" topmargin="0" onLoad="MM_preloadImages('${pageContext.request.contextPath}/images/login_10.gif','${pageContext.request.contextPath}/images/login_12.gif','${pageContext.request.contextPath}/images/login_09.gif','${pageContext.request.contextPath}/images/login_11.gif')">
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="32" align="left" valign="top" class="text006"><table width="98%"  border="0" cellspacing="0" cellpadding="0">
        <tr valign="top">
          <td>【 家庭成员管理 】</td>
          <td align="right">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="215" valign="top"><table width="98%"  border="0" cellspacing="0" cellpadding="0">
      <tr align="left" class="bg03">
        <td width="100%" height="29">
          <span class="text001">&nbsp;&nbsp;修改家庭成员信息</span></td>
        </tr>

    </table>
      <form name="myform" method="post" action="/FFMS1/userupdate">
      <table width="98%"  border="0" cellpadding="0" cellspacing="0" class="text008">
        <tr align="center">
          <td width="12%" height="35" align="right">用户名</td>
          <td width="88%" align="left"><input name="name" type="text" class="inp001" value="${user.name}"></td>
        </tr>
        <tr align="center" class="bg04">
          <td height="35" align="right">真实姓名</td>
          <td align="left"><input name="realname" type="text" class="inp001" value="${user.realname}"></td>
        </tr>
        <tr align="center">
          <td height="35" align="right">输入密码</td>
          <td align="left"><input name="pwd" id="pwd" type="password" class="inp001" value="${user.pwd}"></td>
        </tr>
        <tr align="center" class="bg04">
          <td height="35" align="right">确认密码</td>
          <td align="left"><input name="nobody" type="password" class="inp001" id="rpwd"></td>
        </tr>
      </table>
        <input type="hidden" name="id" value="${user.id}">
      </form>
      <table width="98%" border="0" cellpadding="0" cellspacing="0" class="bor001">
        <tr>
          <td width="24%" height="40" align="center" >
          <a href="javascript:document.myform.submit();" name="update" target="mainframe" onMouseOver="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/index_12_1.gif',1)" onMouseOut="MM_swapImgRestore()" onMouseDown="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/index_12_2.gif',1)" onMouseUp="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/index_12_1.gif',1)"><img src="${pageContext.request.contextPath}/images/index_12_0.gif" name="Image1" width="75" height="24" border="0" id="Image1"></a>&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="/FFMS1/userlist" target="mainframe" onMouseOver="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/login_09.gif',1)" onMouseOut="MM_swapImgRestore()" onMouseDown="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/login_11.gif',1)" onMouseUp="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/login_09.gif',1)"><img src="${pageContext.request.contextPath}/images/login_07.gif" name="Image2" width="75" height="24" border="0" id="Image2"></a></td>
          <td width="76%" align="right">&nbsp;</td>
        </tr>
        <tr><td></td><td></td><td></td></tr>
      </table></td>
  </tr>
</table>
</body>
</html>
