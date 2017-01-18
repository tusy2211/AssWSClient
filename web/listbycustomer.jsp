<%-- 
    Document   : listbycustomer
    Created on : 07-Dec-2016, 15:57:39
    Author     : khanh
--%>

<%@page import="entity.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Customer c = (Customer) request.getAttribute("khachhang");
        %>
        Ten tai khoan :<%=c.getMataikhoan() %>
        So du :<%=c.getSodu()%>
                              
                              
    </body>
</html>
