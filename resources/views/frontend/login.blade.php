@extends("frontend.layout")
@section('content')
    <script src="<?php echo asset( "/resources/views/frontend/js/jquery-1.11.0.min.js?ver=1.0") ?>"></script>
    <script src="<?php echo asset( "/resources/views/frontend/js/layer/layer.js") ?>"></script>
<div class="wrap">

    <form method="post" action="/login.html">
        {{csrf_field()}}
        用户名:<input type="text" value="" name="username" id="username"><br/>
        密码:<input type="password" value="" name="pwd" id="pwd"><br/>
        <input id="btn_login" name="btn_login" type="button" class="btn btn-success radius size-L" value="&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;陆&nbsp;">
    </form>

</div>

    <script src="<?php echo asset( "/resources/views/frontend/js/baseCheck.js") ?>"></script>
    <script src="<?php echo asset( "/resources/views/frontend/js/login.js") ?>"></script>
@endsection