<%-- 
    Document   : searchtime1
    Created on : 09-Dec-2016, 09:51:04
    Author     : khanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Fullscreen Responsive Register Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- Javascript -->
        <script src="assets/js/jquery-1.8.2.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts_1.js"></script>
        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Oleo+Script:400,700'>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/style.css">


        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body>

        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="logo span4">
                        <h1><a href="">History <span class="red">.</span></a></h1>
                    </div>
                    <div class="links span8">
                        <a class="home" href="login.jsp" rel="tooltip" data-placement="bottom" data-original-title="Home"></a>
                        <a class="blog" href="" rel="tooltip" data-placement="bottom" data-original-title="Blog"></a>
                    </div>
                </div>
            </div>
        </div>

        <div class="register-container container">
            <div class="row">
                <div class="iphone span5">
                    <img src="assets/img/iphone.png" alt="">
                </div>
                <div class="register span6">
                    <form action="SearchTimeServlet" method="post">
                        <h2>Search <span class="red"><strong>User</strong></span></h2>
                        <label for="firstname">First Name</label>
                        <input type="text" id="firstname" name="nguoigui" placeholder="enter your first name...">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="matkhau" placeholder="choose a password...">
                        <label for="starttime">Start Time</label>
                        <input type="text" id="starttime" name="startTime" placeholder="Start Time...">
                        <label for="endtime">End Time</label>
                        <input type="text" id="endtime" name="endTime" placeholder="End Time...">
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
                            String errMsg3
                                    = (String) request.getAttribute("err3");
                            if (errMsg3 != null && !"".equals(errMsg3)) {
                        %>
                        <div>
                            <%
                                out.print("<p style='color:red;'>" + errMsg3 + "</p>");
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
                        <button type="submit">View Log</button>
                    </form>
                </div>
            </div>
        </div>



    </body>
</html>
