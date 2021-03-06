<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <title>{{$base['title']}}</title>
    <meta name="keywords" content="{!! $base['keywords'] !!}" />
    <meta name="description" content="{!!$base['description']!!}" />
    <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width, height=device-height"/>
    <link href="<?php echo asset( "/resources/views/frontend/images/favicon.ico?ver=1.0") ?>" rel="shortcut icon" />
    <link rel="stylesheet" href="<?php echo asset( "/resources/views/frontend/css/css.css?ver=1.0") ?>">
    <script src="<?php echo asset( "/resources/views/frontend/js/jquery.min.js?ver=1.0") ?>"></script>
    <script src="<?php echo asset( "/resources/views/frontend/js/layer/layer.js") ?>"></script>
    <script src="<?php echo asset( "/resources/views/frontend/js/clipboard.min.js") ?>"></script>
</head>
<style>


</style>
<body>
<div class="header">
    <div class="logo wrap">
        <h1><a href="/">{{isset($base['web_nickname'])?$base['web_nickname']:'LL'}}</a></h1>

    </div>
    <div class="search wrap">
        <div class="searchbox">
            <form method="post" action="/search.html">
                {{csrf_field()}}
                <input type="text" name="key" id="key" placeholder="输入关键词" value="{{isset($keyword)?$keyword:''}}"><button>SEARCH</button>
            </form>
        </div>

        @if(empty($username))
        <div class="memberbox" style=""><a href="/login.html"><button>登陆</button></a><a href="/register.html"><button>注册</button></a></div>
            @else

            <div class="memberbox">
                <ul style="margin-top: 6px;">
                    <li class="reg_share">
                        <span>用户:{{$username}}</span>
                    </li>
                    <li class="reg_share">
                        <span>新币:<a href="#">{{$coin}}个</a></span>
                    <li class="reg_share">
                    </li>
                    <button type="button" class="btn copyagentlink" data-clipboard-text="{{$base['domain']}}/agent/{{$uid}}" style="width:125px;height:25px;font-size:14px;border-radius:3px;">点击复制推广链接</button>
                    </li>

                    <li class="reg_share">
                        <span><a href="/user/logout" style="color: red;">注销</a></span>
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
            <li><a href="/category/1001.html"><font color="black">Video/视频</font></a></li>
            <li><a href="/aboutus.html"><font color="black">联系我们</font></a></li>

        </ul>
    </div>

</div>
@yield('content')
<div class="footer wrap">{!! $base['copyright'] !!}</div>
<div style="display: none;">
    <!-- 统计 -->
</div>
<script>
    $(function() {
        var clipboardlink = new Clipboard('.copyagentlink');
        clipboardlink.on('success', function(e) {
            layer.msg('推广链接复制成功，请发送给好友注册获取新币');
        });
        clipboardlink.on('error', function(e) {
            layer.msg('推广链接复制失败');
        });
    });
</script>
</body>
</html>
