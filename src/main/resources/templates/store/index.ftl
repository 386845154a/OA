</html><!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>案例1：实现搜索书籍页面</title>
    <!-- 引入bootstrap样式 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <!-- 支持手机端 -->
    <<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <style type="text/css">
        .navbar-collapse{
            flex.grow:0;/* 固定容器中 1代表弹性扩大占用父容器剩余空间 0代表不占用 */
        }
        .form-group{
            width:300px;/* 宽度 */
            margin-left:auto;/* 左间距自适应 */
            margin-right:auto;/* 右间距自适应 */
            margin-top:31px;/* 100-38=62/2=31 */
        }
        .ss{
            height:100px;/* 高度 */
            margin-top:30px;/* 上间距 */
            background-color:#DCDCDC;/* 背景颜色 */
            margin-left:auto;/* 左间距自适应 */
            margin-right:auto;/* 右间距自适应 */

        }
        /* 列表组的上间距 */
        .list-group,.media{
            margin-top:30px;
        }
        .media-body p{
            line-height: 15px;
            letter-spacing: 5px;
        }
        .media-body p button{
            height:30px;
            line-height: 10px;
        }
    </style>
</head>
<body>
<!-- 导航区域  导航条组件-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">您好，欢迎光临</a>
    </div>
</nav>
<!-- 删格搭建主页框架 -->
<div class="container">
    <!-- 第一行 1列：搜索区域 -->
    <div class="row" >
        <div class="col">
            <!-- 搜索区域 -->
            <form>
                <div class="form-group">
                    <!-- 输入框组合-->
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="请输入书籍" aria-label="Recipient's username" aria-describedby="button-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button" id="button-addon2">查询</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <!-- 第二行 -->
    <div class="row" >
        <div class="col-xs-3 col-md-2" >
            <!-- 左3为书籍分类 -->
            <div class="list-group">
                <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
                    书籍分类
                </a>
                <a href="#" class="list-group-item list-group-item-action">爱情</a>
                <a href="#" class="list-group-item list-group-item-action">美女</a>
                <a href="#" class="list-group-item list-group-item-action">都市</a>
                <a class="list-group-item list-group-item-secondary ">哈哈</a>
                <a href="#" class="list-group-item list-group-item-action">打啊</a>
                <a href="#" class="list-group-item list-group-item-action">但是</a>
                <a href="#" class="list-group-item list-group-item-action">功夫</a>
                <a href="#" class="list-group-item list-group-item-action">回顾</a>
                <a href="#" class="list-group-item list-group-item-action">都市</a>
                <a href="#" class="list-group-item list-group-item-action">都市</a>
            </div>
        </div>

        <div class="col-xs-15 col-md-10">
            <!-- 右9为  搜索书籍列表-->
            <div class="container">
                <div class="row">
                    <#list products as product>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <img src="/image/1.png" class="mr-3" width="100px" alt="真是一个好产品啊">
                            <div class="caption">
                                <h3>${product.name}</h3>
                                <p>${product.description}</p>
                            </div>
                        </div>
                    </div>
                    </#list>
                </div>
            </div>
            <div class="text-center">
                <ul class="pagination">
                    <#list 1..totalPages as page>
                        <li class="${page == currentPage?string('active','')}"><a href="?page=${page}">${page}</a></li>
                    </#list>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- 分别引入jQuery和bootstrap的类库 -->
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>