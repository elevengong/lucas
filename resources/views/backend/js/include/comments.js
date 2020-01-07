function batchsend(status) {
    $.ajax({
        url:'/backend/comments/batchsend/'+status,
        type:"post",
        dataType:"json",
        data:$('#form-fireworks').serialize(),
        success:function(data){
            if(data.status == 0)
            {
                layer.msg( data.msg );
            }else{
                layer.msg( data.msg ,function () {
                    window.location.reload();
                });
            }
        }
    })
}