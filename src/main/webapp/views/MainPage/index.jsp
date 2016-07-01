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

                <li><a href="#"> ${sessionScope.user.username}</a></li>
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
</body>
</html>
