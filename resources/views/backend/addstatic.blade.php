<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link href="<?php echo asset( "/resources/views/backend/static/h-ui/css/H-ui.min.css") ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo asset( "/resources/views/backend/static/h-ui.admin/css/H-ui.login.css") ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo asset( "/resources/views/backend/static/h-ui.admin/css/style.css") ?>" rel="stylesheet" type="text/css" />
    <link href="<?php echo asset( "/resources/views/backend/static/Hui-iconfont/1.0.8/iconfont.css") ?>" rel="stylesheet" type="text/css" />

    <title>添加静态属性</title>
    <meta name="keywords" content="添加静态属性">
    <meta name="description" content="添加静态属性">
</head>
<body>
<script type="text/javascript" src="<?php echo asset( "/resources/views/backend/js/jquery.min.1.9.1.js") ?>"></script>
<script type="text/javascript" src="<?php echo asset( "/resources/views/backend/js/My97DatePicker/4.8/WdatePicker.js"); ?>"></script>
<script type="text/javascript" src="<?php echo asset( "/resources/views/backend/js/layer/layer.js") ?>"></script>

<script type="text/javascript" src="<?php echo asset( "/resources/views/backend/js/include/attribute.js?ver=1.1"); ?>"></script>
<div id="frm_account" class="col-xs-12" style="text-align: center;">
    <form class="form form-horizontal" id="form1">
        {{csrf_field()}}
        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">属性代号：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="text" class="input-text" value="" id="name" name="name" />
            </div>
        </div>
        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">是否网站基础属性：</label>
            <div class="col-xs-9 col-sm-9">
                <label  style="float: left;width: 100px;"><input name="base" type="radio" value="0" checked="checked"/>否 </label>
                <label  style="float: left;"><input name="base" type="radio" value="1" />是 </label>
            </div>
        </div>
        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">Key：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="text" class="input-text" value="" id="key" name="key" />
            </div>
        </div>
        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">Value：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="text" class="input-text" value="" id="value" name="value" />
            </div>
        </div>

        <div class="col-xs-12 row cl" style="text-align: center;">
            <div class="formControls col-xs-12 col-sm-12">
                <input type="button" onclick="add_static()" class="btn btn-primary" value="添加属性" id="btn_add_ok" />
            </div>
        </div>

    </form>
</div>

<script>

</script>



</body>
</html>
