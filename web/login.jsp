<%-- 
    Document   : login
    Created on : 21-Nov-2016, 19:24:17
    Author     : khanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Mountain King - Bootstrap Template</title>
        <!-- Bootstrap core CSS -->
        <link href="bootstrap/css/theme.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="style.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,300,700,100' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Raleway:300,700,900,500' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/typicons/2.0.7/typicons.min.css">
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/pushy.css">
        <link rel="stylesheet" href="assets/css/masonry.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/odometer-theme-default.css">
        <script>
            window.odometerOptions = {
                selector: '.odometer',
                format: '(,ddd)', // Change how digit groups are formatted, and how many digits are shown after the decimal point
                duration: 13000, // Change how long the javascript expects the CSS animation to take
                theme: 'default'
            };
        </script>
    </head>
    <body class="">
        <!-- Pushy Menu -->
        <nav class="pushy pushy-left">
            <ul class="list-unstyled">
                <li><a href="#home">Home</a></li>
                <li><a href="#feat">Features</a></li>
                <li><a href="giaodich.jsp">Transfer</a></li>
                <li><a href="searchtime.jsp">View Log</a></li>
                <li><a href="#history">My History</a></li>
                <li><a href="#photos">Look my Photos</a></li>
                <li><a href="#contact">Get in Touch!</a></li>
                <li><a href="http://www.themeinthebox.com/ourtheme/mountain-king-bootstrap-template/" target="_blank">Download</a></li>
            </ul>
        </nav>

        <!-- Site Overlay -->
        <div class="site-overlay"></div>

        <header id="home">
            <div class="container-fluid">
                <!-- change the image in style.css to the class header .container-fluid [approximately row 50] -->
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-xs-10">
                            <a href="#" class="thumbnail logo">
                                <img src="images/your_logo.png" alt="" class="img-responsive">
                            </a>
                        </div>
                        <div class="col-md-1 col-md-offset-8 col-xs-2 text-center">
                            <div class="menu-btn"><span class="hamburger">&#9776;</span></div>
                        </div>
                    </div>
                    <div class="jumbotron">
                        <h1><small>Share The Opportunity</small></br>
                            <strong>Successful Cooperation</strong></h1>
                        <p>This is a simple hero unit, a simple jumbotron-style component for<br>
                            calling extra attention to featured content or information.</p>
                        <p><a href="giaodich.jsp" class="btn btn-primary btn-lg" role="button">Transfer</a> <a target="_blank" href="searchtime.jsp" class="btn btn-lg btn-danger" role="button">Log</a></p>
                    </div>
                </div>
            </div>
        </header>

        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <h3>e Banking</h3>
                        <p>© 2016 Your Company. Designed and Developed by <a target="_blank" href="http://www.themeinthebox.com">K H A N H B N</a></p>
                    </div>
                    <div class="col-md-4">
                        <p class="text-right social"><i class="typcn typcn-social-facebook-circular"></i><i class="typcn typcn-social-twitter-circular"></i><i class="typcn typcn-social-tumbler-circular"></i><i class="typcn typcn-social-github-circular"></i><i class="typcn typcn-social-dribbble-circular"></i></p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JavaScript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="https://netdna.bootstrapcdn.com/twitter-bootstrap/2.0.4/js/bootstrap-scrollspy.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
        <script src="http://masonry.desandro.com/masonry.pkgd.js"></script>
        <script src="assets/js/masonry.js"></script>
        <script src="assets/js/pushy.min.js"></script>
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <script src="assets/js/wow.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        <script src="assets/js/odometer.js"></script>
    </body>
    <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-34344036-1', 'auto');
            ga('send', 'pageview');

    </script>
</html>

