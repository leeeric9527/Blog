<%--
  Created by IntelliJ IDEA.
  User: jeff
  Date: 16/2/27
  Time: 上午10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>博客列表</title>
    <link rel="stylesheet" href="${assetsPath}/css/app.min.css">
</head>
<body onload="onLoad()">
<div class="main">
    <div class="container">
        <div class="breadcrumb-wrapper">
            <div class="breadcrumb-wrapper">
                <ol class="breadcrumb">
                    <li><a href="${rootPath}/index">首页</a></li>
                    <li class="active"><a>博客列表</a></li>

                </ol>
            </div>

        </div>

        <div id="adv-img" class="container-fluid">
            <div class="row">
                <div class="col-md-6 no-gap">
                    <div class="img-left">
                        <c:choose>
                            <c:when test="${empty page.list}" >
                            </c:when>
                            <c:otherwise>
                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

                                    <ul class="img-listButton list-inline carousel-indicators">        <!--赋予了图形-->
                                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>     <!--改写active?-->
                                        <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                    </ul>

                                    <!-- Wrapper for slides -->

                                    <div class="carousel-inner" role="listbox">
                                        <div class="item active">

                                            <div class="img-block">
                                                <a href="${rootPath}/blog/viewblog/${page.list.get(0).id}"><img src="${page.list.get(0).thumb}" alt=""/></a>
                                                <p>${page.list.get(0).title}</p>                        <!--与carousel-caption无法共存-->
                                            </div>

                                        </div>
                                        <c:forEach begin="1" end="5" items="${page.list}" var="blogs">

                                            <div class="item">
                                                <div class="img-block">
                                                    <a href="${rootPath}/blog/viewblog/${blogs.id}"><img src="${blogs.thumb}" alt=""/></a>
                                                    <p>${blogs.title}</p>                        <!--与carousel-caption无法共存-->
                                                </div>
                                            </div>

                                        </c:forEach>
                                    </div>
                                </div>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>

                <div class="col-md-6 no-gap">
                    <div class="img-right">
                        <c:choose>
                            <c:when test="${empty page.list}" >
                            </c:when>
                            <c:otherwise>
                                <ul>
                                    <div class="title">标题列表</div>
                                    <div class="item active">
                                        <li><a href="${rootPath}/blog/viewblog/${page.list.get(0).id}">${page.list.get(0).title}</a></li>
                                    </div>
                                    <c:forEach begin="1" end="5" items="${page.list}" var="blogs" varStatus="status">

                                        <div class="item">
                                            <li><a href="${rootPath}/blog/viewblog/${blogs.id}">${blogs.title}</a></li>
                                        </div>

                                    </c:forEach>
                                </ul>
                            </c:otherwise>
                        </c:choose>
                    </div>

                </div>
            </div>
        </div>

        <div id="adv-article">

            <c:forEach begin="${listStart}" end="${page.list.size()}" items="${page.list}" var="blogs">
                <div class="row">
                    <div class="col-md-12 floor">
                        <div class="row adv-article">
                            <c:choose>
                                <c:when test="${blogs.thumb != ''}" >
                                    <div class="col-md-3">
                                        <a href="${rootPath}/blog/viewblog/${blogs.id}" class="transition">
                                            <span class="image-wrapper">
                                                <img src="${blogs.thumb}" alt="${blogs.title}"/>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="col-md-9">
                                        <div class="title"><a href="${rootPath}/blog/viewblog/${blogs.id}">${blogs.title}</a></div>
                                        <div class="decs">${blogs.description}</div>
                                        <div class="time"><i class="fa fa-clock-o"></i>上传时间: ${blogs.inputtime}</div>
                                        <a href="${rootPath}/blog/delete/${blogs.id}"> <li >删除</li></a>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <div class="col-md-3">
                                        <a href="${rootPath}/blog/viewblog/${blogs.id}" class="transition">
                                                    <span class="image-wrapper">
                                                        <img src="${assetsPath}/images/new_default_page.png" alt="${blogs.title}"/>
                                                    </span>
                                        </a>
                                    </div>

                                    <div class="col-md-9">
                                        <div class="title"><a href="${rootPath}/blog/viewblog/${blogs.id}">${blogs.title}</a></div>
                                        <div class="decs">${blogs.description}</div>
                                        <div class="time"><i class="fa fa-clock-o"></i>上传时间: ${blogs.inputtime}</div>
                                       <a href="${rootPath}/blog/delete/${blogs.id}"> <li >删除</li></a>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>
                <div class="line"></div>
            </c:forEach>
        </div>
    </div>
    <jsp:include page="../common/pagination.jsp" />
</div>
</div>
<jsp:include page="../common/footer.jsp" />
<script type="text/javascript"src="//cdn.bootcss.com/jquery/2.2.0/jquery.min.js"></script>
<%--<script type="text/javascript"src="${assetsPath}/js/main.min.js"></script>--%>
<script type="text/javascript" src="//cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<%--<script type="text/javascript"src="${assetsPath}/js/main.min.js"></script>--%>
<script type="text/javascript"src="${assetsPath}/js/main.js"></script>
<script type="text/javascript"src="//cdn.bootcss.com/jquery.form/3.51/jquery.form.min.js"></script>
<script>
    $(function () {
        $(".navmenu").mouseover(function () {
            $(this).children("ul").show();
        })
        $(".navmenu").mouseout(function () {
            $(this).children("ul").hide();
        })
    })
</script>
<script>

    $(function(){
        function alertMessage(message) {
            var insert =
                    "<div class='suspend' style='width: 100%;height: 100%;display: none;z-index: 2;background-color: rgba(0,0,0,.6);position: fixed;top: 0;left: 0;'>" +
                    "<div class='suspend-content' style='text-align:right;padding: 30px 40px;width: 400px;height: 200px;background-color: #fff;border-radius: 4px;position: fixed;top: 26%;left: 36%;'>" +
                    "<p class='alertMessage' style='text-align:left;font-size: 22px;height: 80px;color: #000;font-weight: bold;margin-bottom: 30px;'></p>" +
                    " <button type='button' class='btn btn-success'>确定</button>" +
                    "</div>" +
                    "</div>";
            $('body').append(insert);
            $('.alertMessage').html(message);
            $('.suspend').css('display','block');
            $('.btn').on('click',function(){
                $('.suspend').css('display','none');
            });


        };
        $(document).ready(function () {
            var msg="${Msg}";
//            var msg="abc";

            if(msg!=''){
                alertMessage(msg);
            }
        });
    });


</script>


</body>
</html>