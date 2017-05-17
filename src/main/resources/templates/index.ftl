[#ftl]
<html lang="en">
<title>Index Page</title>
<head>
[#include '/macro/bootstrap_header.ftl']
[#include '/macro/header.ftl']
</head>
<body>

[#include '/macro/nav_index_bar.ftl']

<div class="panel panel-default" style="margin-left:auto; margin-right:auto; width:1000px">
    [#if user??]
        <div class="row">
            <div class="col-lg-4 button-holder">
                <label>Make a search</label>
                <a class="btn btn-default" href="/search" role="button"><i class="fa fa-search" aria-hidden="true"></i> Search</a>
            </div>
            <div class="col-lg-4 button-holder">
                <label>Add a new car</label>
                <a class="btn btn-default" href="/car/add" role="button"><i class="fa fa-plus" aria-hidden="true"></i> Add car</a>
            </div>
            <div class="col-lg-4 button-holder">
                <label>View your car list</label>
                <a class="btn btn-default" href="/account/list?id=${user.id?c}" role="button"><i class="fa fa-list" aria-hidden="true"></i> Car list</a>
            </div>
        </div>
        <hr>
    [/#if]
    <b style="margin-left: 10px">Last Cars Added:</b><br>
    <div class="panel-body" style="display: flex; flex-direction: row;">
            [#list cars as car]

            <div class="thumbnail" style="margin-right: 25px; margin-left: 25px">
                <img src="[#if car.imgUrl??]/ext-img/${car.imgUrl}[#else]/images/car-placeholder.jpg[/#if]" style="height: auto; width: 250;"/>
            <div class="caption">
                <h3 align="center">${car.manufacturer}  ${car.type}</h3>
                <p>
                [#if currentUser?? && currentUser.id!= car.sellerId]
                    <a href="/account/list/car?id=${car.id?c}" style="margin-left: 9px; margin-right: 9px">View
                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                        <a href="/account/bookmark?id=${car.id?c}" style="margin-left: 9px; margin-right: 9px">Bookmark
                            <span  class="glyphicon glyphicon-heart" aria-hidden="true" ></span></a>
                        <a href="/account/list/car/conversation?id=${car.id?c}" style="margin-left: 9px; margin-right: 9px;">Contact
                            <span class="glyphicon glyphicon-comment" aria-hidden="true" ></span>
                        </a>
                </p>

                [#else ]
                    <p align="center" style="margin-left: 100px; margin-right: 100px;">
                        <a href="/account/list/car?id=${car.id?c}" >View
                        <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a></p>

                [/#if]
            </div>
            </div>
        [/#list]
            </div>
        </div>
    </div>
</div>


[#include '/macro/bootstrap_footer.ftl']
</body>
</html>