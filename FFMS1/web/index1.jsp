<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/27
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <style>
        #header {
            background-color:black;
            color:white;
            text-align:center;
            padding:5px;
        }
        #nav {
            line-height:30px;
            background-color:#eeeeee;
            height:300px;
            width:100px;
            float:left;
            padding:5px;
        }
        #section {
            width:350px;
            float:left;
            padding:10px;
        }
        #footer {
            background-color:black;
            color:white;
            clear:both;
            text-align:center;
            padding:5px;
        }
    </style>
</head>
<body>
<div id="header">
    <h1>City Gallery</h1>
</div>

<div id="nav">
    London<br>
    Paris<br>
    Tokyo<br>
</div>

<div id="section">
    <a href="/FFMS1/list"><h1>Login>></h1></a>
    <p>
        London is the capital city of England. It is the most populous city in the United Kingdom,
        with a metropolitan area of over 13 million inhabitants.
    </p>
    <p>
        Standing on the River Thames, London has been a major settlement for two millennia,
        its history going back to its founding by the Romans, who named it Londinium.
    </p>
</div>

<div id="footer">
    Copyright W3School.com.cn
</div>
</body>
</html>
