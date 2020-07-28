<%@ page import="java.util.List" %>
<%@ page import="beans.Dormitory" %>
<%@ page import="beans.G_Admin" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/17
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<html>
<head>
    <title>个人信息</title>
    <style>
        /* Border styles */
        table thead, table tr {
            border-top-width: 1px;
            border-top-style: solid;
            border-top-color: rgb(230, 189, 189);
        }
        table {
            border-bottom-width: 1px;
            border-bottom-style: solid;
            width:10%;
            height: 15%;
            border-bottom-color: rgb(251, 255, 248);
        }


        /* Padding and font style */
        table td, table th {
            padding: 5px 10px;
            font-size: 12px;
            font-family: Verdana;
            color: rgb(177, 106, 104);
            margin: 1px;
        }
        div{
            font-family: 楷体;
            font-size: 16px;
        }
        h2{
            font-family: 楷体;
        }
        #a{
            width: 100%;
            height: 5%;
            background-color: #96e7ff;
            border: black;
        }
        .header1{
            color: #ffb6c1;
            padding: 5px;
            font-size: 28px;
            font-family: 楷体;
            text-align: center;
        }
    </style>
</head>
<body>
<%
    G_Admin g_admin = (G_Admin) request.getSession().getAttribute("g_admin");
%>
<h3 class="header1" align="center" >个人信息</h3>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;亲爱的${g_admin.name}，欢迎您！</div>
<table id="a" style="table-layout: fixed">
    <tr><td style="word-wrap: break-word"><a href="testFindAll">查看所有寝室以及所属宿舍信息</a></td>
        <td><a href="findByControl_Dm?control_dormitory=<%=g_admin.getControl_dormitory()%>">管理宿舍</a></td>
        <td><a href="findAllDormitory">查看所有寝室信息</a></td>
        <td><a href="/sushe3/addDormitory.jsp">添加寝室</a></td></tr>
</table>
<table align=" center">
    <tr><td>姓名：</td><td>${g_admin.name}</td></tr>
    <tr><td>性别：</td><td>${g_admin.sex}</td></tr>
    <tr><td>管理宿舍：</td><td><a href="findByControl_Dm?control_dormitory=<%=g_admin.getControl_dormitory()%>">${g_admin.control_dormitory}</a></td></tr>
</table>
</body>
</html>
