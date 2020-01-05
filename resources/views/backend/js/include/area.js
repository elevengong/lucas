function opennewarea() {
    var index = layer.open({
        type: 2,
        title: "添加国家",
        closeBtn: 0,
        area: ['700px', '400px'], //宽高
        shadeClose: true,
        resize:false,
        content: '/backend/area/areaadd/'
    });
}

function areaaddprocess() {
    var area_name  = $.trim( $('#area_name').val() );

    if(area_name == '')
    {
        layer.msg('地区名不能为空');
        return false;
    }

    $.ajax({
        type:"post",
        url:"/backend/area/areaadd",
        dataType:'json',
        headers:{'X-CSRF-TOKEN':$('input[name="_token"]').val()},
        data:$("#form1").serialize(),
        success:function(data){
            if(data.status == 0)
            {
                layer.msg( data.msg );
            }else{
                layer.msg( data.msg ,function () {
                    window.parent.location.reload();
                    window.location.close();
                });
            }
        },
        error:function (data) {
            layer.msg(data.msg);
        }
    });
}

function areaedit(id) {
    var index = layer.open({
        type: 2,
        title: "修改地区",
        closeBtn: 0,
        area: ['700px', '400px'], //宽高
        shadeClose: true,
        resize:false,
        content: '/backend/area/areaedit/'+ id
    });
}


function areaeditprocess(id) {
    var area_name  = $.trim( $('#area_name').val() );

    if(area_name == '')
    {
        layer.msg('地区名不能为空');
        return false;
    }

    $.ajax({
        type:"post",
        url:"/backend/area/areaedit/" + id,
        dataType:'json',
        headers:{'X-CSRF-TOKEN':$('input[name="_token"]').val()},
        data:$("#form1").serialize(),
        success:function(data){
            if(data.status == 0)
            {
                layer.msg( data.msg );
            }else{
                layer.msg( data.msg ,function () {
                    window.parent.location.reload();
                    window.location.close();
                });
            }
        },
        error:function (data) {
            layer.msg(data.msg);
        }
    });

}

function areadel(id){
    layer.confirm("是否真的删除该地区？", function() {
        $.ajax({
            type: "delete",
            url: "/backend/area/delete/" + id,
            dataType: 'json',
            headers: {'X-CSRF-TOKEN': $('input[name="_token"]').val()},
            success: function (data) {
                if (data.status == 0) {
                    layer.msg(data.msg);

                } else {
                    layer.msg( data.msg ,function () {
                        window.location.reload();
                    });
                }
                return false;
            },
            error: function (data) {
                layer.msg(data.msg);
                return false;
            }
        });
    });
}

