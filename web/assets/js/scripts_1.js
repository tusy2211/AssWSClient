
jQuery(document).ready(function () {

    /*
     Background slideshow
     */
    $.backstretch([
        "assets/img/backgrounds/1.jpg"
                , "assets/img/backgrounds/2.jpg"
                , "assets/img/backgrounds/3.jpg"
    ], {duration: 3000, fade: 750});

    /*
     Tooltips
     */
    $('.links a.home').tooltip();
    $('.links a.blog').tooltip();

    /*
     Form validation
     */
    $('.register form').submit(function () {
        $(this).find("label[for='firstname']").html('First Name');
        $(this).find("label[for='password']").html('Password');
        $(this).find("label[for='starttime']").html('Start Time');
        $(this).find("label[for='endtime']").html('End Time');

        ////
        var firstname = $(this).find('input#firstname').val();
        var password = $(this).find('input#password').val();
        var starttime = $(this).find('input#starttime').val();
        var endtime = $(this).find('input#endtime').val();

        if (firstname == '') {
            $(this).find("label[for='firstname']").append("<span style='display:none' class='red'> - Please enter your first name.</span>");
            $(this).find("label[for='firstname'] span").fadeIn('medium');
            return false;
        }
        if (password == '') {
            $(this).find("label[for='password']").append("<span style='display:none' class='red'> - Please enter a valid password.</span>");
            $(this).find("label[for='password'] span").fadeIn('medium');
            return false;
        }
        if (starttime == '') {
            $(this).find("label[for='starttime']").append("<span style='display:none' class='red'> - Please enter start time.</span>");
            $(this).find("label[for='starttime'] span").fadeIn('medium');
            return false;
        }
        if (endtime == '') {
            $(this).find("label[for='endtime']").append("<span style='display:none' class='red'> - Please enter end time.</span>");
            $(this).find("label[for='endtime'] span").fadeIn('medium');
            return false;
        }


    });


});


