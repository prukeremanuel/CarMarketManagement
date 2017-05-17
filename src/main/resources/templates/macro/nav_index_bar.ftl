[#ftl]
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand">Car Management System</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/">Home</a></li>
            </ul>


            <ul class="nav navbar-nav navbar-right">
            <li>[#if currentUser??] <div style="float: right">
                <li class="active">[#if currentUser.role=='BUYER']
                     <a href="/account/buyer">[#else] <a href="/account/seller">
                [/#if] <span class="glyphicon glyphicon-user" aria-hidden="true"></span>  ${currentUser.firstName} ${currentUser.lastName}</a></li>
                <li class="active"><a href="/logout"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>  LogOut</a></li>
            [#else]
                <li class="active"><a href="/login"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>  LogIn</a></li>
                <li class="active"><a href="/signup"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>  SignUp</a></li>
            [/#if]
            </ul>

        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

