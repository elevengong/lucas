function memberedit(id) {
    var index = layer.open({
        type: 2,
        title: "修改用户",
        closeBtn: 0,
        area: ['700px', '450px'], //宽高
        shadeClose: true,
        resize:false,
        content: '/backend/member/edit/'+id
    });
}

function edit_member(id) {
    var status  = $.trim( $('#status').val() );
    var coin = $.trim( $('#coin').val() );

    if(coin == '')
    {
        layer.msg('新币数不能为空');
        return false;
    }

    $.ajax({
        type:"post",
        url:"/backend/member/edit/"+id,
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