<%-- 
    Document   : searchcustomer
    Created on : 07-Dec-2016, 15:49:44
    Author     : khanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="SearchCustomerServlet" method="post">
            Khach hang <input type="text" name="khachhang" /> <br /><br />
            Mat khau <input type="text" name="matkhau" /> <br /><br />
            <input type="submit" value="Search" />
            <%
                String errMsg1
                        = (String) request.getAttribute("err");
                if (errMsg1 != null && !"".equals(errMsg1)) {
            %>
            <div>
                <%
                    out.print(errMsg1);
                %>
            </div>
            <%}%>
        </form>
    </body>
</html>
