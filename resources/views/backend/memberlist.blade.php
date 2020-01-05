@extends("backend.layout.layout")
@section("content")
    <script type="text/javascript" src="<?php echo asset( "/resources/views/backend/js/include/members.js?ver=1.2"); ?>"></script>
    <section class="Hui-article-box">
        <div class="Hui-article">
            <input type="hidden" id="hid_tid" value="0" />
            <article class="cl pd-20">
                <div class="text-c">
                    <form id="frm_admin" action="" method="post" >
                        {{csrf_field()}}
                        <input type="text" class="input-text" style="width:250px" placeholder="输入用户名" id="seach_uname" name="searchword" value="{{isset($searchData['searchword'])?$searchData['searchword']:''}}">
                        <button type="submit" class="btn btn-success radius" id="btn_seach" name="btn_seach">
                            <i class="Hui-iconfont">&#xe665;</i> 搜
                        </button>
                    </form>
                </div>



                <div class="mt-20">
                    <table class="table table-border table-bordered table-hover table-bg table-sort">
                        <thead>
                        <tr class="text-c">
                            <th width="20">ID</th>
                            <th width="50">用户名</th>
                            <th width="60">Agent ID</th>
                            <th width="50">手机号</th>
                            <th width="80">邮箱</th>
                            <th width="80">新币(个)</th>
                            <th width="80">状态</th>
                            <th width="50">最近登陆IP</th>
                            <th width="50">最近登陆时间</th>
                            <th width="50">注册IP</th>
                            <th width="50">注册时间</th>
                            <th width="50">操作</th>
                        </tr>
                        </thead>
                        <tbody>

                        @foreach($datas as $data)
                            <tr class="text-c">
                                <td>{{$data['id']}}</td>
                                <td>{{$data['username']}}</td>
                                <td>{{$data['parent_id']}}</td>
                                <td>{{$data['phone']}}</td>
                                <td>{{$data['mail']}}</td>
                                <td>{{$data['coin']}}</td>
                                <td>{{$data['status']==1?'正常':'已冻结'}}</td>
                                <td>{{$data['last_login_ip']}}</td>
                                <td>{{$data['last_login_time']}}</td>
                                <td>{{$data['register_ip']}}</td>
                                <td>{{$data['created_at']}}</td>
                                <td class="td-manage">
                                    <a title="编辑" href="javascript:memberedit({{$data['id']}})" class="ml-5"
                                       style="text-decoration:none">
                                        <i class="Hui-iconfont">&#xe6df;</i>
                                    </a>
                                </td>
                            </tr>
                        @endforeach

                        </tbody>
                    </table>
                </div>

                <div class="ml-12" style="text-align: center;">
                    {{ $datas->links() }}
                </div>


            </article>
        </div>

        <hr />

    </section>
    <script>

    </script>



@endsection