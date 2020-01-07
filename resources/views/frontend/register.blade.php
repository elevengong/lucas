@extends("frontend.layout")
@section('content')
    <script src="<?php echo asset( "/resources/views/frontend/js/layer/layer.js") ?>"></script>
    <div class="wrap">
        <div class="m1100 m_content">
            <div class="mn" id="main_message">
                <div class="bm">
                    <div class="bm_h bbs">
                        <span class="y"><a href="/login.html" class="xi2">已经有帐号？登陆</a></span>
                        <h3 class="xs2">注册</h3>
                    </div>
                    <div>

                        <div id="main_messaqge_L4IM3">
                            <div class="loginform">
                                <div class="loginHint_wrapper">
                                    <h1><a href="/login.html" style="color: red;">登陆</a>｜注册</h1>
                                    <p class="bold">网站名和介绍</p>
                                    <p class="normal">注册会员帐号，体现更多乐趣。</p>
                                </div>
                                <form class="form form-horizontal" method="post" action="/register.html">
                                    {{csrf_field()}}
                                    <div class="input_field">
                                        <span class="input_fieldTitle"><b style="color: red;">* </b>用户帐号</span>
                                        <input type="text" name="username" id="username" placeholder="请输入你的用户帐号" tabindex="1">
                                    </div>
                                    <div class="input_field">
                                        <span class="input_fieldTitle"><b style="color: red;">* </b>密码</span>
                                        <input type="password" name="pwd" id="pwd" autocomplete="off" placeholder="请输入6-9字符" tabindex="2">
                                    </div>
                                    <div class="input_field">
                                        <span class="input_fieldTitle"><b style="color: red;">* </b>重复密码</span>
                                        <input type="password" name="repwd" id="repwd" autocomplete="off" placeholder="请输入6-9字符" tabindex="2">
                                    </div>

                                    <div class="input_field">
                                        <span class="input_fieldTitle"><b style="color: red;">* </b>手机号</span>
                                        <input type="text" name="phone" id="phone" placeholder="请输入你的手机号" tabindex="1">
                                    </div>
                                    <div class="input_field">
                                        <span class="input_fieldTitle"><b style="color: red;">* </b>邮箱</span>
                                        <input type="text" name="mail" id="mail" placeholder="请输入你的邮箱" tabindex="1">
                                    </div>
                                    <input type="hidden" value="{{$agentId}}" name="parent_id" id="parent_id">
                                    <div class="row cl">
                                        <div class="formControls col-xs-8 col-xs-offset-3">
                                            <input id="btn_registered" name="btn_login" type="button" class="btn btn-success radius size-L" value="&nbsp;注&nbsp;&nbsp;&nbsp;&nbsp;册&nbsp;">
                                            <input id="btn_clear" name="btn_clear" type="reset" class="btn btn-default radius size-L" value="&nbsp;取&nbsp;&nbsp;&nbsp;&nbsp;消&nbsp;">
                                        </div>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>






    </div>

    <script src="<?php echo asset( "/resources/views/frontend/js/baseCheck.js") ?>"></script>
    <script src="<?php echo asset( "/resources/views/frontend/js/login.js") ?>"></script>
@endsection