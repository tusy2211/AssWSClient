<%-- 
    Document   : listbytime1
    Created on : 09-Dec-2016, 14:36:10
    Author     : khanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Information</title>
        <style>
            body{
                background-image: url("anhbia.jpg");
                background-repeat: inherit;
            }
            #main {
                width: 1000px;
                text-align: center;
                margin: auto;
                margin-bottom: 50px;
                height: 400px;
            }
            #main #form1 table{
                text-align: center;
            }
            #main #form1 table caption{
                color: white;
                font-size: 24px;
            }
            #main #form1 table thead{
                color: white;
                font-weight: bold;
            }

            h1{
                color: #d59392;
            }
            
        </style>
    </head>
    <body>
        <%
            String username = (String) session.getAttribute("username");
        %>
        <header>
            <p style="color: #0e90d2">Welcome: <%=username%> | 
                <a href="LogoutServlet">Logout</a></p>
        </header>
        <div id="main">

            <table border="1">
                <caption>
                    <h1>Transaction Logs</h1>
                </caption>
                <thead>
                    <tr>
                        <td width="4%" height="26" bgcolor="#9933CC">Ma Giao Dich</td>
                        <td width="7%" height="26" bgcolor="#9933CC">Nguoi gui</td>
                        <td width="7%" height="26" bgcolor="#9933CC">Nguoi nhan</td>
                        <td width="5%" height="26" bgcolor="#9933CC">Thoi gian giao dich</td>
                        <td width="7%" height="26" bgcolor="#9933CC">So tien giao dich</td>
                        <td width="7%" height="26" bgcolor="#9933CC">Phi Giao Dich</td>
                        <td width="7%" height="26" bgcolor="#9933CC">So lan giao dich</td>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${date}" var="t">
                        <tr>
                            <td><c:out value="${t.magiaodich}"></c:out></td>
                            <td><c:out value="${t.nguoigui}"></c:out></td>
                            <td><c:out value="${t.nguoinhan}"></c:out></td>
                            <td><c:out value="${t.thoigiangiaodich}"></c:out></td>
                            <td><c:out value="${t.sotiengiaodich}"></c:out></td>
                            <td><c:out value="${t.phigiaodich}"></c:out></td>
                            <td><c:out value="${t.sogd}"></c:out></td>
                            </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
