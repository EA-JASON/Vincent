
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>家庭成员管理--添加</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript" src="${pageContext.request.contextPath}/js/common.js"></script>
  <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
<script>
  $(function () {
    $("a[name=ti]").click(function () {
      if($("input[id=username]").val()==""||$("input[id=rname]").val()==""){
        alert("用户名或真实姓名不能为空!")
        return false;
      }else if($("input[id=pwd]").val()!=$("input[id=rpwd]").val()){
        alert("密码不一致!")
        return false;
      }else if($("input[id=pwd]").val()==""||$("input[id=rpwd]").val()==""){
          alert("密码不能为空!")
          return false;
      }
      else {
        return true;
      }
    })
  })
	//完成客户端验证
	//用户名、真实姓名不为空
	//两个密码相同
	//提交表单

</script>
</head>

<body leftmargin="0" topmargin="0" onLoad="MM_preloadImages('${pageContext.request.contextPath}/images/login_10.gif','${pageContext.request.contextPath}/images/login_12.gif','${pageContext.request.contextPath}/images/login_09.gif','${pageContext.request.contextPath}/images/login_11.gif')">

<form name="myform"  method="post" action="/FFMS1/useradd">

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
          <span class="text001">&nbsp;&nbsp;新增家庭成员</span></td>
        </tr>

    </table>
      <table width="98%"  border="0" cellpadding="0" cellspacing="0" class="text008">
        <tr align="center">
          <td width="12%" height="35" align="right">用户名</td>
          <td width="88%" align="left"><input name="name" type="text" class="inp001" id="username"></td>
        </tr>
        <tr align="center" class="bg04">
          <td height="35" align="right">真实姓名</td>
          <td align="left"><input name="realname" type="text" class="inp001" id="rname"></td>
        </tr>
        <tr align="center">
          <td height="35" align="right">输入密码</td>
          <td align="left"><input name="pwd" type="password" class="inp001" id="pwd"></td>
        </tr>
        <tr align="center" class="bg04">
          <td height="35" align="right">确认密码</td>
          <td align="left"><input name="pwd1" type="password" class="inp001" id="rpwd"></td>
        </tr>
      </table>
      <table width="98%" border="0" cellpadding="0" cellspacing="0" class="bor001">
        <tr>
          <td width="22%" height="40" align="center" >
          <a name="ti" href="javascript:document.myform.submit();" target="mainframe" onMouseOver="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/index_12_1.gif',1)" onMouseOut="MM_swapImgRestore()" onMouseDown="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/index_12_2.gif',1)" onMouseUp="MM_swapImage('Image1','','${pageContext.request.contextPath}/images/index_12_1.gif',1)"><img src="${pageContext.request.contextPath}/images/index_12_0.gif" name="Image1" width="75" height="24" border="0" id="Image1"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="/FFMS1/userlist" target="mainframe" onMouseOver="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/login_09.gif',1)" onMouseOut="MM_swapImgRestore()" onMouseDown="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/login_11.gif',1)" onMouseUp="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/login_09.gif',1)"><img src="${pageContext.request.contextPath}/images/login_07.gif" name="Image2" width="75" height="24" border="0" id="Image2"></a></td>
          <td width="78%" align="right">&nbsp;          </td>
        </tr>
      </table></td>
  </tr>
</table>

</form>
</body>
</html>
