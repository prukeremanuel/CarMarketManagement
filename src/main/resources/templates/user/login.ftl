[#ftl]
<html lang="en">
<title>Login Page</title>
<head>
[#include '/macro/bootstrap_header.ftl']
[#include '/macro/header.ftl']

</head>
<body>

[#include '/macro/nav_login_bar.ftl']


[#include '/macro/errors.ftl']

<div class="panel panel-default" style="margin-left:auto; margin-right:auto; width:500px">


    <div class="panel-body">


        <form action="/login/onLogin" method="POST">
            <div class="form-group">
                <label for="userName">Username</label>
                <input type="text"
                       class="form-control" id="userName" name="userName"
                       placeHolder="Username"
                       autofocus="true"/>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password"
                       class="form-control" id="password" name="password"
                       placeHolder="Password" />
            </div>
            <div class="container-fluid">
                <div class="col-lg-6 col-lg-offset-3 text-center">
                    <button type="submit" class="btn btn-default">LOGIN</button>

                </div>
            </div>
        </form>
    </div>
</div>



[#include '/macro/bootstrap_footer.ftl']
</body>
</html>