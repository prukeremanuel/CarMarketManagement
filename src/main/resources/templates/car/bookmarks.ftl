[#ftl]
[#import "/spring.ftl" as spring /]

<html lang="en">
<title>Your Bookmarks Page</title>
<head>
[#include '/macro/bootstrap_header.ftl']
[#include '/macro/header.ftl']
[#include '/macro/header-custom-scripts-for-bookmarks.ftl']
</head>
<body>

[#include '/macro/nav_index_bar.ftl']
<div class="panel panel-default" style="margin-left:auto; margin-right:auto; width:1000px">
    <div class="panel-heading" ><b>You have ${cars?size} car[s] bookmarked</b><br></div>

    <div class="panel-body">
        <table id="table" class="table">
            <tr>
                <th>Manufacturer</th>
                <th>Type</th>
                <th>Price</th>
                <th></th>
                <th>View </th>
                <th>Contact </th>
                <th>Distance </th>
                <th>Delete </th>
            </tr>

        [#list cars as car]
            <tr>
                <td>${car.manufacturer}</td>
                <td>${car.type}</td>
                <td>${car.price}</td>
                <td></td>
                <td><a href="/account/list/car?id=${car.id?c}">
                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                </td>
                <td><a href="/account/list/car/conversation?id=${car.id?c}" style="margin-left: 15px; margin-right: 3px;">
                        <span class="glyphicon glyphicon-comment" aria-hidden="true" style="margin-right: 5px;"></span></a>
                </td>
                <td id="distance"></td>
                <script>
                        var latitude = ${car.location.latitude?c!''};
                        var longitude = ${car.location.longitude?c!''};
                        if (latitude != null && longitude != null) {
                            calculateDistance(latitude,longitude);
                        }else {
                            calculateDistance(0,0);
                        }
                </script>
                <td><a href="/account/bookmark/delete?id=${car.id?c}">
                    <span class="glyphicon glyphicon-erase" aria-hidden="true"></span></a>
                </td>
            </tr>
        [/#list]
        </table>
    </div>
</div>

[#include '/macro/bootstrap_footer.ftl']

</body>
</html>