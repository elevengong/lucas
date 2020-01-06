<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <title>{{$base['title']}}</title>
    <meta name="keywords" content="{!! $base['keywords'] !!}" />
    <meta name="description" content="{!!$base['description']!!}" />
    <link href="http://manhua.com/resources/views/frontend/pc/images/favicon.ico" rel="shortcut icon" />
    <link rel="stylesheet" href="<?php echo asset( "/resources/views/frontend/css/css.css?ver=1.0") ?>">
</head>

<body>
<div class="header">
    <div class="logo wrap">
        <h1><a href="/">&nbsp;</a></h1>
        <div class="title">这里要改</div>

    </div>
    <div class="search wrap">
        <div style="width: 450px;float: left">
            <form method="get" action="index.php">
                <input type="text" name="key" placeholder="输入关键词"><button>搜索SEARCH</button>
            </form>
        </div>

        @if(empty($username))
        <div class="memberbox" style=""><a href="/login.html"><button>登陆</button></a><a href="/register.html"><button>注册</button></a></div>
            @else

            <div class="memberbox">
                <ul>
                    <li class="reg_share">
                        <span>用户:<a href="/user/center.html">eleven</a></span>
                    </li>
                    <li class="reg_share">
                        <span>新币:<a href="#">{{$coin}}个</a></span>
                    </li>
                    <li class="reg_share">
                        <span><a href="/user/logout">注销</a></span>
                    </li>

                </ul>
            </div>

        @endif
    </div>
    <div class="nav wrap">
        <ul>
            <li><a href="/" ><font color="black">MainPage/主页</font></a></li>
            @foreach($category as $ca)
            <li><a href="/category/{{$ca['id']}}.html" ><font color="black">{{$ca['area_name']}}</font></a></li>
            @endforeach
            <li><a href="/category/1000.html"><font color="black">Massage/按摩</font></a></li>
            <li><a href="/category/1001.html"><font color="black">Video/视频</font></a></li>

        </ul>
    </div>

</div>
@yield('content')
<div class="footer wrap">{!! $base['copyright'] !!}</div>
<div style="display: none;">
    <!-- 统计 -->
</div></body>
</html>
