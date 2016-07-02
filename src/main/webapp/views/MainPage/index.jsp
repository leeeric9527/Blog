<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<!DOCTYPE html>
<head lang="en">
<meta charset="UTF-8">
    <link rel = "stylesheet" href="${assetsPath}/css/main.css">
   <%-- <link rel="stylesheet" href="${assetsPath}/css/app.min.css">--%>
    <link rel="stylesheet" href="${assetsPath}/css/reset.css">
    <title></title>
</head>
<body>
<div class="main-wrapper">

    <header><!--页头开始-->



        <nav>
            <div class="logo"><a id="item2">博客平台blog</a></div>
            <c:if test="${sessionScope.user!=null}">
            <ul>
                <li><a href="${rootPath}/user/logout">退出登录</a></li>
                <li><a href="${rootPath}/blog/list">博客列表</a></li>
                <li><a href="${rootPath}/blog/list/${sessionScope.user.id}">个人博客</a></li>
                <%--<li><a href="#"> ${sessionScope.user.username}</a></li>--%>
                </ul>
            </c:if>
            <c:if test="${sessionScope.user==null}">
            <ul>
                <li><a href="${rootPath}/user/login">登陆</a></li>
                <li><a href="${rootPath}/user/register">注册</a></li>
            </ul>
            </c:if>
        </nav>

        <div id="banner">
            <div class="inner">
                <div>
                    <div class="hr"></div>
                    <h1>博客平台</h1>
                    <div class="hr"></div>
                </div>
                <p class="sub-heading">a coder from heart
                    this is a coder
                    道旁梧桐树叶日渐枯黄老去, 偶有风起，孤寂心生</p>
                <%--<button>了解我</button>--%>
                <div class="more">更多</div>
            </div>
        </div>
    </header><!--页头结束-->
</div>
<script type="text/javascript"src="//cdn.bootcss.com/jquery/2.2.0/jquery.min.js"></script>
<%--<script type="text/javascript"src="${assetsPath}/js/main.min.js"></script>--%>
<script type="text/javascript" src="//cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript"src="//cdn.bootcss.com/jquery.form/3.51/jquery.form.min.js"></script>
<div id="content"><!--内容开始-->
<section class="green-section">
    <div class="wrapper">
        <h2>博客平台</h2>
        <div class="hr"></div>
        <div class="word-said">
            <p class="sub-heading">每天写一篇博客，一年能写365篇</p>
        </div>
    </div>
    <div class="icon-group">
       <a href="#item1"><span class="icon"><font color=white>博客</font></span></a>
        <a href="#item2"> <span class="icon"><font color=white>首页</font></span></a>
        <%--<span class="icon">item3</span>--%>
    </div>
</section>
    <section class="gray-section">

        <div class="article-preview">
            <div class="img-section">
               <a href="${rootPath}/blog/viewblog/${page.list.get(0).id}"> <img src="${page.list.get(0).thumb}" alt=""></a>
            </div>
            <div class="text-section">
               <h2>${page.list.get(0).title}</h2>
                <p>${page.list.get(0).description}</p>
            </div>
        </div>
        <div class="article-preview">

            <div class="text-section">

                    <h2>${page.list.get(1).title}</h2>
                <p>${page.list.get(1).description}</p>
            </div>
            <div class="img-section">
                <a href="${rootPath}/blog/viewblog/${page.list.get(1).id}">
                    <img src="${page.list.get(1).thumb}" alt=""></a>
            </div>
        </div>
        <div class="article-preview">
            <div class="img-section">
                <a href="${rootPath}/blog/viewblog/${page.list.get(2).id}"><img src="${page.list.get(2).thumb}" alt=""></a>
            </div>
            <div class="text-section">

                <h2>${page.list.get(2).title}</h2>
                <p>${page.list.get(2).description}</p>
            </div>
        </div>
    </section>
    <section class="purple-section">
        <div class="purple-content">
        <div class="heading-wrapper">

           <a id="item1"> <h2>博客概览</h2></a>
            <div class="hr"></div>
            <div class="sub-heading">
                我们不编写博客，我们只是博客的搬运工
            </div>
        </div>
        <div calss="card-group">
            <div class="card">
              <a href="${rootPath}/blog/viewblog/${page.list.get(2).id}" style='text-decoration:none;'>
                <font color="black"><h3>${page.list.get(0).title}</h3></font>
              </a>
                <p>${page.list.get(0).description}</p>
            </div>
            <div class="card">
                <a href="${rootPath}/blog/viewblog/${page.list.get(2).id}" style='text-decoration:none;'>
                    <font color="black">
                <h3>${page.list.get(1).title}</h3>
                        </font>
                    </a>
                <p>${page.list.get(1).description}</p>
            </div>
            <div class="card">
                <a href="${rootPath}/blog/viewblog/${page.list.get(2).id}" style='text-decoration:none;'>
                    <font color="black">
                <h3>${page.list.get(2).title}</h3>
                        </font>
                    </a>
                <p>${page.list.get(2).description}</p>
            </div>
            <div class="card">
                <a href="${rootPath}/blog/viewblog/${page.list.get(2).id}" style='text-decoration:none;'>
                    <font color="black">
                <h3>${page.list.get(3).title}</h3>
                        </font>
                    </a>
                <p>${page.list.get(3).description}</p>
            </div>
            <div class="card">
                <a href="${rootPath}/blog/viewblog/${page.list.get(2).id}" style='text-decoration:none;'>
                    <font color="black">
                <h3>${page.list.get(4).title}</h3>
                        </font>
                    </a>
                <p>${page.list.get(4).description}</p>
            </div>
            <div class="card">
                <a href="${rootPath}/blog/viewblog/${page.list.get(2).id}" style='text-decoration:none;'>
                    <font color="black">
                <h3>${page.list.get(5).title}</h3>
                        </font>
                    </a>
                <p>${page.list.get(5).description}</p>
            </div>
        </div>
        </div>
    </section>
</div><!--内容结束-->

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
