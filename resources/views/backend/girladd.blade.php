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

    <title>添加分类</title>
    <meta name="keywords" content="添加">
    <meta name="description" content="添加分类">
</head>
<body>
<script type="text/javascript" src="<?php echo asset( "/resources/views/backend/js/jquery.min.1.9.1.js") ?>"></script>
<script type="text/javascript" src="<?php echo asset( "/resources/views/backend/js/My97DatePicker/4.8/WdatePicker.js"); ?>"></script>
<script type="text/javascript" src="<?php echo asset( "/resources/views/backend/js/layer/layer.js") ?>"></script>

<script type="text/javascript" src="<?php echo asset( "/resources/views/backend/js/include/girls.js?ver=1.2"); ?>"></script>
<div id="frm_account" class="col-xs-12" style="text-align: center;">
    <form class="form form-horizontal" id="form1">
        {{csrf_field()}}
        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">标题：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="text" class="input-text" value="" id="title" name="title" />
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">封面：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="button" value="上传图片" onclick="photo1.click()" style="float:left;margin-top:10px;" class="btn_mouseout"/>
                <p><input type="file" id="photo1" name="photo1" onchange="upload(this);" style="display:none" /></p>
                <div id="show" style="float:left;padding-left:7px;">
                </div>
                <input type="hidden" id="cover" name="cover" value="">
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">名字：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="text" class="input-text" value="" id="name" name="name" />
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">年龄：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="text" class="input-text" value="" id="age" name="age" />
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">身高：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="text" class="input-text" value="" id="height" name="height" />
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">胸围：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="text" class="input-text" value="" id="boobs" name="boobs" />
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">体重：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="text" class="input-text" value="" id="weight" name="weight" />
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">Room：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="text" class="input-text" value="" id="room" name="room" />
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">area：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="text" class="input-text" value="" id="area" name="area" />
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">地点：</label>
            <div class="col-xs-9 col-sm-9">
                <select name="area_id" style="float:left;" id="area_id">
                    @foreach($areas as $area)
                        <option value="{{$area['id']}}">{{$area['area_name']}}</option>
                    @endforeach
                </select>
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">价格：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="text" class="input-text" value="" id="price" name="price" />
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">过夜价格：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="text" class="input-text" value="" id="overnight" name="overnight" />
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">电话：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="text" class="input-text" value="" id="mobile" name="mobile" />
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">微信：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="text" class="input-text" value="" id="wechat" name="wechat" />
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">视频地址：</label>
            <div class="col-xs-9 col-sm-9">
                <textarea rows="10" cols="60" name="videolist" id="videolist" style="float: left;"></textarea>
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">服务列表：</label>
            <div class="col-xs-9 col-sm-9">
                <textarea rows="10" cols="60" name="service" id="service" style="float: left;"></textarea>
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">是否有按摩：</label>
            <div class="col-xs-9 col-sm-9">
                <label style="float: left;width: 100px;"><input name="massage" type="radio" value="1" checked="checked"/>没有 </label>
                <label style="float: left;"><input name="massage" type="radio" value="2" />有 </label>
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">是否可以双飞：</label>
            <div class="col-xs-9 col-sm-9">
                <label  style="float: left;width: 100px;"><input name="threesome" type="radio" value="1" checked="checked"/>不可以 </label>
                <label  style="float: left;"><input name="threesome" type="radio" value="2" />可以 </label>
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">状态：</label>
            <div class="col-xs-9 col-sm-9">
                <select name="show" style="float:left;" id="status">
                    <option value="1" selected="selected" >显示</option>
                    <option value="2" >隐藏</option>
                </select>
            </div>
        </div>

        <div class="col-xs-12 row cl">
            <label class="form-label col-xs-3 col-sm-3">Note：</label>
            <div class="col-xs-9 col-sm-9">
                <input type="text" class="input-text" value="" id="note" name="note" placeholder="Menses / 例假" />
            </div>
        </div>


        <div class="col-xs-12 row cl" style="text-align: center;">
            <div class="formControls col-xs-12 col-sm-12">
                <input type="button" onclick="girladdprocess()" class="btn btn-primary" value="添加" id="btn_add_ok" />
            </div>
        </div>

    </form>
</div>

<script>

</script>



</body>
</html>
