<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>收支项目管理</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript" src="${pageContext.request.contextPath}/js/common.js"></script>
  <script src="${pageContext.request.contextPath}/js/jquery-3.0.0.min.js"></script>
  <script>
    $(function () {
      $(":checkbox[name=chkAll]").click(function () {
        $(":checkbox[name=checkbox]").prop("checked",this.checked)
      })
      $(":input[name=go]").click(function () {
        if($(":input[name=pageNum]").val()>${page.getPages()}){
          alert("超出最大页码!")
        }else {
          var pageNum = $(":input[name=pageNum]").val();
          var pageSize= $("select[name=pageSize]").val();
          location.href="${pageContext.request.contextPath}/itemlist?pageNum="+pageNum+"&pageSize="+pageSize;
        }
      });
      $("select[name=pageSize]").change(function () {
        location.href="${pageContext.request.contextPath}/itemlist?pageNum=1&pageSize="+this.value;
      })
      $("a[name=nextpage]").click(function () {
        if(${page.getPageNum()+1}>${page.getPages()}){
          return false;
        }
      })
      var get = $(".ck");
      var strIds = [];
      $("a[name=delete]").click(function () {
        if($("input[id='item']").is(':checked')==true){
          for (i = 0 ; i < get.length; i++) {

            if (get[i].checked) {

              strIds.push(get[i].value);

            }

          }
          location.href="${pageContext.request.contextPath}/deleteitems?ids="+strIds;
        }else{
          alert("请至少选中一条记录!");
        }
      })
    })
  </script>
</head>

<body topmargin="0" leftmargin="0">
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="32" align="left" valign="top" class="text006"><table width="98%"  border="0" cellspacing="0" cellpadding="0">
        <tr valign="top">
          <td>【 收支项目管理 】 (父项目名称)</td>
          <td align="right">
          <a href="/FFMS1/iadd" target="mainframe" onMouseOver="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/index_14_1.gif',1)" onMouseOut="MM_swapImgRestore()" onMouseDown="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/index_14_2.gif',1)" onMouseUp="MM_swapImage('Image2','','${pageContext.request.contextPath}/images/index_15_1.gif',1)"><img src="${pageContext.request.contextPath}/images/index_14_0.gif" width="85" height="24" border="0" align="top" id="Image2"></a>&nbsp;&nbsp;<a href="#" name="delete" target="mainframe" onMouseOver="MM_swapImage('Image3','','${pageContext.request.contextPath}/images/index_13_1.gif',1)" onMouseOut="MM_swapImgRestore()" onMouseDown="MM_swapImage('Image3','','${pageContext.request.contextPath}/images/index_13_2.gif',1)" onMouseUp="MM_swapImage('Image3','','${pageContext.request.contextPath}/images/index_13_1.gif',1)"><img src="${pageContext.request.contextPath}/images/index_13_0.gif" id="Image3" width="75" height="24" border="0"></a>
		  </td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td height="215" valign="top"><table width="98%"  border="0" cellspacing="0" cellpadding="0">
      <tr align="center" class="bg03">
        <td width="13%" height="29">
          <input type="checkbox" name="chkAll" value="checkbox">
          <span class="text007">全选</span></td>
        <td width="22%" class="text007"> 收入/支出              </td>
        <td width="20%" class="text007">项目名称 </td>
        <td width="30%" class="text007">操作</td>
      </tr>
      <c:forEach items="${page.getResult()}" var="items">
      <tr align="center">
        <td height="35"><input type="checkbox"class="ck" id="item" name="checkbox" value="${items.id}"></td>
        <td>支出</td>
        <td align="left">${items.name}</td>
        <td><a href="/FFMS1/idetail?id=${items.id}"><img src="${pageContext.request.contextPath}/images/icon_resault.gif" alt="查 看" width="12" height="15" hspace="10" border="0"></a>
        	<a href="/FFMS1/iedit?id=${items.id}"><img src="${pageContext.request.contextPath}/images/icon_set.gif" alt="编 辑" width="14" height="15" border="0"></a><a href="/FFMS1/idelete?id=${items.id}"><img src="${pageContext.request.contextPath}/images/delete.gif" alt="删 除" width="13" height="16" hspace="10"></a></td>
      </tr>
      </c:forEach>
    </table>
      <table width="98%" border="0" cellpadding="0" cellspacing="0" class="bor001">
        <tr>
          <td height="40" align="left" >&nbsp;</td>
          <td align="right">每页显示
            <select name="pageSize">
              <option selected value="5" ${page.getPageSize()==5?"selected":""}>5</option>
              <option value="10" ${page.getPageSize()==10?"selected":""}>10</option>
            </select>
            条&nbsp;&nbsp;第${page.getPageNum()}/${page.getPages()}&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/itemlist?pageNum=${page.getPages()-page.getPageNum()}">首页 |</a></a> <a href="${pageContext.request.contextPath}/itemlist?pageNum=${page.getPageNum()-1}" class="tex04">上一页</a> | <a name="nextpage" href="${pageContext.request.contextPath}/itemlist?pageNum=${page.getPageNum()+1}" class="tex04">下一页</a><a href="${pageContext.request.contextPath}/itemlist?pageNum=${page.getPages()}">| 末页</a>
            <input class="InputText" type="text"  name="pageNum" id="pagego" style="width:30px;" value="${page.getPageNum()}"/>
            <input class="input_button" name="go" type="submit" id="go" value="GO" />
          </td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
