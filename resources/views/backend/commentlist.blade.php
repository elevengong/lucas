@extends("backend.layout.layout")
@section("content")
    <script type="text/javascript" src="<?php echo asset( "/resources/views/backend/js/include/comments.js?ver=1.1"); ?>"></script>
    <section class="Hui-article-box">
        <div class="Hui-article">
            <input type="hidden" id="hid_tid" value="0" />
            <article class="cl pd-20">
                <div class="text-c">
                    <form id="frm_admin" action="" method="post" >
                        {{csrf_field()}}
                        <input type="text" class="input-text" style="width:250px" placeholder="输入昵称" id="seach_uname" name="searchword" value="{{isset($searchData['searchword'])?$searchData['searchword']:''}}">
                        <select name="status"  class="input-text" style="width:100px">
                            <option value="0" @if(isset($searchData['status']) and $searchData['status']==0)selected="selected"@endif>未审核</option>
                            <option value="1" @if(isset($searchData['status']) and $searchData['status']==1)selected="selected"@endif>已审核</option>
                            <option value="2" @if(isset($searchData['status']) and $searchData['status']==2)selected="selected"@endif>审核不通过</option>
                            <option value="3" @if(isset($searchData['status']) and $searchData['status']==3)selected="selected"@endif>全部</option>
                        </select>
                        <button type="submit" class="btn btn-success radius" id="btn_seach" name="btn_seach">
                            <i class="Hui-iconfont">&#xe665;</i> 搜
                        </button>
                    </form>
                </div>

                <div class="cl pd-5 bg-1 bk-gray mt-20">
                <span class="l">
                    <input style="background-color:green;border-color:green;" class="btn btn-primary radius" type="submit" onclick="confirm('你确定批量通过选中的评论吗？') ? batchsend(1) : false;" value="批量通过审核">
                    <input style="background-color:red;border-color:red;" class="btn btn-primary radius" type="submit" onclick="confirm('你确定批量不通过选中的评论吗？') ? batchsend(2) : false;" value="批量不通过">
                </span>
                </div>

                <div class="mt-20">
                    <form action="/backend/comments/batchsend" method="post" enctype="multipart/form-data" id="form-fireworks">
                        {{csrf_field()}}
                    <table class="table table-border table-bordered table-hover table-bg table-sort">
                        <thead>
                        <tr class="text-c">
                            <td width="30">本页全选：<input type="checkbox" onclick="$('input[name*=\'selected\']').trigger('click');"/></td>
                            <th width="30">评论ID</th>
                            <th width="30">父评论ID</th>
                            <th width="30">被评论的妹子</th>
                            <th width="30">评论人昵称</th>
                            <th width="80">内容</th>
                            <th width="50">隐藏的内容</th>
                            <th width="30">状态</th>
                            <th width="30">入库时间</th>
                        </tr>
                        </thead>
                        <tbody>

                        @foreach($comments as $data)
                            <tr class="text-c">
                                <td>
                                    <?php if($data['status'] == 0){?>
                                    <input type="checkbox" class="ids" name="selected[]" value="<?=$data['id']?>"/>
                                    <?php }else{?>
                                    &nbsp;
                                    <?php }?>
                                </td>
                                <td>{{$data['id']}}</td>
                                <td>{{$data['parent_id']==0?'无':$data['parent_id']}}</td>
                                <td><a style="color: green;" href="/beauty/{{$data['g_id']}}.html" target="_blank">{{$data['name']}}</a></td>
                                <td>{{$data['nickname']}}</td>
                                <td style="text-align:left;">{!! $data['content'] !!}</td>
                                <td style="text-align:left;">{!! $data['hidden_content'] !!}</td>
                                <td>@if($data['status']==0) <b style="color: blue;">未审核</b> @elseif($data['status']==1) <b style="color: green;">已审核</b> @else <b style="color: red;">未通过</b> @endif</td>
                                <td>{{$data['created_at']}}</td>
                            </tr>
                        @endforeach

                        </tbody>
                    </table>
                    </form>
                </div>

                <div class="ml-12" style="text-align: center;">
                    {{ $comments->links() }}
                </div>


            </article>
        </div>

        <hr />

    </section>
    <script>



    </script>



@endsection