@extends("frontend.layout")
@section('content')
    <script src="<?php echo asset( "/resources/views/frontend/js/jquery-1.11.0.min.js?ver=1.0") ?>"></script>
    <script src="<?php echo asset( "/resources/views/frontend/js/layer/layer.js") ?>"></script>
    <div class="wrap">

        <form method="post" action="/register.html">
            {{csrf_field()}}
            *用户名:<input type="text" value="" name="username" id="username" autocomplete="off" placeholder="请输入你的用户帐号"><br/>
            *密码:<input type="password" value="" name="pwd" id="pwd" placeholder="请输入6-9字符"><br/>
            *重复密码:<input type="password" value="" name="repwd" id="repwd" placeholder="请输入6-9字符"><br/>
            *手机号:<input type="text" value="" name="phone" id="phone" placeholder="请输入你的手机号"><br/>
            *邮箱:<input type="text" value="" name="mail" id="mail" placeholder="请输入你的邮箱"><br/>
            <input type="hidden" value="{{$agentId}}" name="parent_id" id="parent_id"><br/>
            <input id="btn_registered" name="btn_login" type="button" class="btn btn-success radius size-L" value="&nbsp;注&nbsp;&nbsp;&nbsp;&nbsp;册&nbsp;">

        </form>

    </div>

    <script src="<?php echo asset( "/resources/views/frontend/js/baseCheck.js") ?>"></script>
    <script src="<?php echo asset( "/resources/views/frontend/js/login.js") ?>"></script>
@endsection