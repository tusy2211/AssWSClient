<%-- 
    Document   : update
    Created on : 07-Sep-2016, 10:36:37
    Author     : khanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Information</title>

        <link rel="stylesheet" type="text/css" href="css/dsach.css"/>
        <style>
            html{
                background-image: url("anhbia.jpg");
                
            }
        </style>
        <script>
            function ConfirmSubmit()
            {
                var x = confirm("Are you sure you want to transfer?");
                if (x)
                    return true;
                else
                    return false;
            }
        </script>
    </head>
    <body>
        <div class="testbox">
            <h1>Transfer</h1>
            <%
                String errMsg1
                        = (String) request.getAttribute("err1");
                if (errMsg1 != null && !"".equals(errMsg1)) {
            %>
            <div>
                <%
                    out.print("<p style='color:red;'>" + errMsg1 + "</p>");
                %>
            </div>
            <%}%>
            <%
                String errMsg
                        = (String) request.getAttribute("err");
                if (errMsg != null && !"".equals(errMsg)) {
            %>
            <div>
                <%
                    out.print("<p style='color:red;'>" + errMsg + "</p>");
                %>
            </div>
            <%}%>
            <%
                String errMsg4
                        = (String) request.getAttribute("err4");
                if (errMsg4 != null && !"".equals(errMsg4)) {
            %>
            <div>
                <%
                    out.print("<p style='color:red;'>" + errMsg4 + "</p>");
                %>
            </div>
            <%}%>
            <%
                String errMsg5
                        = (String) request.getAttribute("err5");
                if (errMsg5 != null && !"".equals(errMsg5)) {
            %>
            <div>
                <%
                    out.print("<p style='color:red;'>" + errMsg5 + "</p>");
                %>
            </div>
            <%}%>
            <%
                String errMsg2
                        = (String) request.getAttribute("err2");
                if (errMsg2 != null && !"".equals(errMsg2)) {
            %>
            <div>
                <%
                    out.print("<p style='color:red;'>" + errMsg2 + "</p>");
                %>
            </div>
            <%}%>
            <%
                String errMsg6
                        = (String) request.getAttribute("err6");
                if (errMsg6 != null && !"".equals(errMsg6)) {
            %>
            <div>
                <%
                    out.print("<p style='color:red;'>" + errMsg6 + "</p>");
                %>
            </div>
            <%}%>
            <%
                String errMsg7
                        = (String) request.getAttribute("err7");
                if (errMsg7 != null && !"".equals(errMsg7)) {
            %>
            <div>
                <%
                    out.print("<p style='color:red;'>" + errMsg7 + "</p>");
                %>
            </div>
            <%}%>
            <form action="GiaoDichServlet" method="post">
                <hr>
                <label id="icon" for="name"><i class="icon-envelope "></i></label>
                <input type="text" name="maKH_gui" id="name1" placeholder="Account Send"/>
                <label id="icon" for="name"><i class="icon-user"></i></label>
                <input type="text" name="maKH_nhan" id="name2" placeholder="Account Receive"/>
                <label id="icon" for="name"><i class="icon-shield"></i></label>
                <input type="password" name="pwd" id="password" placeholder="Password"/>
                <label id="icon" for="name"><i class="icon-shield"></i></label>
                <input type="text" name="sotien" id="sotien" placeholder="Amount"/>
                <div class="gender">
                    <input type="radio" value="KH" id="male" name="choice"/>
                    <label for="male" class="radio" chec>Customer</label>
                    <input type="radio" value="DT" id="female" name="choice" />
                    <label for="female" class="radio">Partner</label>
                </div> 
                <p>By clicking Register, you agree on our <a href="#">terms and condition</a>.</p>
                <button class="button" onclick="return ConfirmSubmit()">Save</button><br />


            </form>
        </div>

    </body>
</html>
