<%@ page import="java.net.URLEncoder" %>
<%@ page import="org.apache.commons.lang3.StringUtils" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html lang="zh-CN">
<%--登录成功后想跳转的链接--%>
<%
    String ret = request.getParameter("ret");
    if(StringUtils.isNotBlank(ret)) {
        ret = URLEncoder.encode(ret);
    } else {
        ret = "";
    }
%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="/favicon.ico">

    <title>登陆</title>

    <script src="/assets/js/jquery-2.1.0.min.js"></script>
    <!-- Bootstrap core CSS -->
    <link href="bootstrap3.3.5/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">

    <style>

        body{
            padding-top:50px;
            padding-bottom:50px;
            background-color:#aaa;
        }

        body {
            background: url("images/bg.jpg");
            background-position: center 0;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            -webkit-background-size: cover;
            -o-background-size: cover;
            -moz-background-size: cover;
            -ms-background-size: cover;
        }


    </style>

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

    <script type="text/javascript">

        // 在被嵌套时就刷新上级窗口
        if(window.parent != window){
            window.parent.location.reload(true);
        }
    </script>
    <script type="text/javascript">
        //获取验证码
        function changeValidateCode() {
            var timenow = new Date().getTime();
				document.getElementById("imgObj").src = "VerifyCode?d=" + timenow;
//            $("#imgObj").src = "/VerifyCode?d=" + timenow;
        }
    </script>
    <script type="text/javascript">
        function check(){
            var username = $("#inputEmail").val();
            var password = $("#inputPassword").val();
            if (username =="")
            {
                window.alert("请输入您的用户名!");
                $("#inputEmail").focus();
                return false;
            }
            if (password =="")
            {
                window.alert('请输入密码');
                $("#inputPassword").focus();
                return false;
            }
//        if (document.form1.Email.value=="")
//        {
//            alert("请输入您的Email地址!");
//            form1.Email.focus();
//            return false;
//        }
//        var myRegex = /@.*\.[a-z]{2,6}/;
//        var email = form1.Email.value;
//        email = email.replace(/^ | $/g,"");
//        email = email.replace(/^\.*|\.*$/g,"");
//        email = email.toLowerCase();
//
//        //验证电子邮件的有效性
//        if (email == "" || !myRegex.test(email))
//        {
//            alert ("请输入有效的E-MAIL!");
//            form1.Email.focus();
//            return false;
//        }
            return true;
        }
    </script>
</head>

<body>

<div class="container-fluid">
    <div class="row center-block">
            <div class="col-xs-3">
            </div>
            <div class="col-xs-3">

                <div class="carousel slide" id="carousel-629360">
                    <ol class="carousel-indicators">
                        <li class="active" data-slide-to="0" data-target="#carousel-629360"></li>
                        <li data-slide-to="1" data-target="#carousel-629360" class=""></li>
                        <li data-slide-to="2" data-target="#carousel-629360" class=""></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active"> <img alt="" src="img/1.jpg">
                            <div class="carousel-caption" contenteditable="true">
                                <h4>棒球</h4>
                                <p>棒球运动是一种以棒打球为主要特点，集体性、对抗性很强的球类运动项目，在美国、日本尤为盛行。</p>
                            </div>
                        </div>
                        <div class="item"> <img alt="" src="images/电网.jpg">
                            <div class="carousel-caption" contenteditable="true">
                            </div>
                        </div>
                        <h1>欢迎访问电力市场仿真系统</h1>
                    </div>
                    <a data-slide="prev" href="#carousel-629360" class="left carousel-control">‹</a> <a data-slide="next" href="#carousel-629360" class="right carousel-control">›</a> </div>
            </div>
            <div class="col-xs-3">
                <form class="form-signin" onsubmit="return check();" action="/login.page?ret=<%=ret%>" method="post">
                    <h3 class="form-signin-heading">请登陆</h3>
                    <label for="inputEmail" class="sr-only">邮箱/电话</label>
                    <input type="text" id="inputEmail" class="form-control" placeholder="Email/Telephone" name="username" required autofocus value="${username}">
                    <label for="inputPassword" class="sr-only">密码</label>
                    <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" required >
                    <div style="margin-bottom:10px;">
                        <input id="validateCode" class="form-control" placeholder="请输入验证码" name="validateCode" required >
                        <img id="imgObj" style="height:40px;"  title="点击我,换一个！" src="/VerifyCode" onclick="changeValidateCode()"/>
                    </div>
                    <div class="checkbox" style="color: red;">${error}</div>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">登 陆</button>
                    <%--<input type="submit" name="submit" value="登录">--%>
                </form>
            </div>
            <div class="col-xs-3">
            </div>
    </div>
</div>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="js/ie10-viewport-bug-workaround.js"></script>


</body>
</html>
