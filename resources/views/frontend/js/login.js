$(function(){
    $("#btn_registered").click( function(){
        var username = $("#username").val();
        var pwd = $("#pwd").val();
        var repwd = $("#repwd").val();
        var phone = $("#phone").val();
        var mail = $("#mail").val();
        var parent_id = $("#parent_id").val();

        if( !isUname_(username) || !( username.length >= 5 && username.length <= 10 ) ){
            layer.msg("请输入字母、数字、下划线组成的5-10位的用户名");
            $('#username').focus();
            return false;
        }

        if( !isUname(pwd) || !( pwd.length >= 6 && pwd.length <= 9 ) ){
            layer.msg("请输入字母、数字组成的7-20位的密码");
            $('#pwd').focus();
            return false;
        }

        if( repwd != pwd ){
            layer.msg("两个密码不相同");
            $('#repwd').focus();
            return false;
        }

        if( !isInt(phone) ){
            layer.msg("手机号格式错误");
            $('#phone').focus();
            return false;
        }

        if( !isEmail(mail) ){
            layer.msg("邮箱格式错误");
            $('#mail').focus();
            return false;
        }

        var datas = { username: username, pwd: pwd, phone: phone, mail:mail, parent_id:parent_id};

        $.ajax({
            type:"post",
            url:"/register.html",
            dataType:'json',
            headers:{'X-CSRF-TOKEN':$('input[name="_token"]').val()},
            data:datas,
            success:function(data){
                if(data.status == 0)
                {
                    layer.msg( data.msg );
                    return false;
                }else{
                    layer.msg( data.msg ,function () {
                        window.location.href = "/login.html";
                    });
                }

                return false;
            },
            error:function (data) {
                return false;

            }

        });

    } );
});


$(function(){
    $("#btn_login").click( function(){
        var username = $("#username").val();
        var pwd = $("#pwd").val();

        if( !isUname_(username) || !( username.length >= 5 && username.length <= 10 ) ){
            layer.msg("请输入字母、数字、下划线组成的5-10位的用户名");
            $('#username').focus();
            return false;
        }

        if( !isUname(pwd) || !( pwd.length >= 6 && pwd.length <= 9 ) ){
            layer.msg("请输入字母、数字组成的6-9位的密码");
            $('#pwd').focus();
            return false;
        }

        var datas = { username: username, pwd: pwd};

        $.ajax({
            type:"post",
            url:"/login.html",
            dataType:'json',
            headers:{'X-CSRF-TOKEN':$('input[name="_token"]').val()},
            data:datas,
            success:function(data){
                if(data.status == 0)
                {
                    layer.msg( data.msg );
                    return false;

                }else{
                    layer.msg( data.msg ,function () {
                        window.location.href = "/";
                    });
                }

                return false;
            },
            error:function (data) {
                return false;

            }

        });

    } );
});