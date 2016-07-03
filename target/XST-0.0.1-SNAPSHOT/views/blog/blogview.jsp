<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>博客</title>
    <link rel="stylesheet" href="${assetsPath}/css/app.min.css">
</head>
<body>
<%--<jsp:include page="../common/header.jsp" />--%>
<div class="main">
    <div class="container">
        <div class="breadcrumb-wrapper">
            <div class="breadcrumb-wrapper">
                <ol class="breadcrumb">
                    <li><a href="${rootPath}/index">首页</a></li>
                    <li><a href="${rootPath}/blog/list">博客列表</a></li>
                    <li class="active"><a>查看博客</a></li>
                </ol>
            </div>
        </div>
        <div id="advisory-hit-topic" class="container-fluid">
            <div class="row">
                <div  class="topic col-md-12">
                    <div class="row">
                        <div class="topic-main col-md-12">
                            <div class="article">
                                <h3>
                                    ${blog.title}
                                </h3>
                                <blockquote>
                                    <p>
                                        ${blog.description}
                                    </p>
                                </blockquote>

                                <div class="article-main">
                                    ${blog.content}

                                    <div class="label-ad">
                                        <ul>
                                            <span>作者：</span>
                                            <li>${blog.author}</li></ul>
                                        <ul>
                                            <a href="${rootPath}/blog/add"><li>新增</li></a>
                                            <a href="${rootPath}/blog/edit/${blog.id}"> <li>编辑</li></a>
                                            <div class="clearfix"></div>
                                        </ul>
                                    </div>
                                </div>
                                <div class="line"></div>
                                <div class="addon">
                                    <div class="good pull-left">
                                        <a href=""><i class="fa fa-thumbs-up"></i></a>
                                        <span>2333</span>
                                    </div>

                                    <div class="contact-icon pull-right">
                                        <span>分享到：</span>
                                        <a href="http://service.weibo.com/share/share.php?appkey=&title=&url=&pic=&searchPic=false&style=simple" target="_blank"><i class="contact-icon fa fa-weibo"></i></a>
                                        <a href=""><i class="contact-icon fa fa-weixin"></i></a>
                                        <a href=""><i class="contact-icon fa fa-qq"></i></a>
                                        <a href=""><i class="contact-icon fa fa-renren"></i></a>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="comment">

                                <c:choose>
                                    <c:when test="${empty comments}" >
                                    </c:when>
                                    <c:otherwise>
                                        <c:forEach begin="${listStart}" end="${comments.size()}" items="${comments}" var="comment">
                                            <div class="comment-cur">
                                                <div class="container-fluid">
                                                    <div class="row top">
                                                        <div class="col-md-1">
                                                            <img src="${assetsPath}/images/user.jpg" alt=""/>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="mid">
                                                                <span class="user">${comment.author}：</span>
                                                                <span class="content">${comment.content}</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row below">
                                                        <div class="col-md-1"></div>
                                                        <div class="col-md-2">
                                                            <div class="pull-left">
                                                                <span class="user">评论时间：</span>
                                                                <span class="time">${comment.inputtime}</span>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-9">
                                                            <div class="pull-right">
                                                                <span class="reply"><a href="#">回复</a></span>
                                                                <span><a href="#"><i class="fa fa-thumbs-o-up">&nbsp;&nbsp;2333</i></a></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="line"></div>
                                        </c:forEach>
                                    </c:otherwise>
                                </c:choose>
                                <form action="${rootPath}/blog/comment/${blog.id}" method="post" >
                                <div class="title">文章评论</div>
                                <!--<div class="comment-main">-->
                                <!--<p>总体来讲，互联网的介入的确在不同程度上去除掉了一些不必要的中介环节，提升企业招聘效率。但平台在信息匹配之外的扩展上还没有</p>-->
                                <textarea name="content" id=""  class="comment-main" placeholder="发表评论..."></textarea>
                                <!--</div>-->
                                <button class="btn btn-primary pull-right">提交评论</button>
                                </form>
                                <div class="clear"></div>
                                <div class="line"></div>

                                <img id="imgSinaShare" class="img_sina_share" title="将选中内容分享到新浪微博" src="http://simg.sinajs.cn/blog7style/images/common/share.gif" />




<%--                                <nav>
                                    <ul class="pagination pull-right">
                                        <li><a href="#">上一页</a></li>
                                        <li class="active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li>
                                            <a href="#">下一页</a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </nav>--%>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<jsp:include page="../common/footer.jsp" />
<script type="text/javascript"src="//cdn.bootcss.com/jquery/2.2.0/jquery.min.js"></script>
<%--<script type="text/javascript"src="${assetsPath}/js/main.min.js"></script>--%>
<script type="text/javascript"src="${assetsPath}/js/main.js"></script>
<script type="text/javascript"src="//cdn.bootcss.com/jquery.form/3.51/jquery.form.min.js"></script>
<script type="text/javascript">
    $(function(){
        var replaceImg = $("#replaceImg");
        var url = replaceImg.attr("data-url");
        getFlashHtml(url,replaceImg);
    });
</script>

<!--以下是微博分享功能，没做成功，等以后有时间再研究-->
<%--
<script>
    var eleImgShare = document.getElementById("imgSinaShare");

    var $sinaMiniBlogShare = function(eleShare, eleContainer) {
        var eleTitle = document.getElementsByTagName("title")[0];
        eleContainer = eleContainer || document;
        var funGetSelectTxt = function() {
            var txt = "";
            if(document.selection) {
                txt = document.selection.createRange().text;	// IE
            } else {
                txt = document.getSelection();
            }
            return txt.toString();
        };
        eleContainer.onmouseup = function(e) {
            e = e || window.event;
            var txt = funGetSelectTxt(), sh = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;
            var left = (e.clientX - 40 < 0) ? e.clientX + 20 : e.clientX - 40, top = (e.clientY - 40 < 0) ? e.clientY + sh + 20 : e.clientY + sh - 40;
            if (txt) {
                eleShare.style.display = "inline";
                eleShare.style.left = left + "px";
                eleShare.style.top = top + "px";
            } else {
                eleShare.style.display = "none";
            }
        };
        eleShare.onclick = function() {
            var txt = funGetSelectTxt(), title = (eleTitle && eleTitle.innerHTML)? eleTitle.innerHTML : "未命名页面";
            if (txt) {
                window.open('http://v.t.sina.com.cn/share/share.php?title=' + txt + '→来自页面"' + title + '"的文字片段&url=' + window.location.href);
            }
        };
    }(eleImgShare);
</script>
<div id="ad">
    <script type="text/javascript">	google_ad_client = "pub-0090627341039040";google_ad_slot = "2041257798";google_ad_width = 468;google_ad_height = 60;</script><script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-11205167-1']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script');
            ga.type = 'text/javascript';
            ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>
</div>
--%>

</body>
</html>