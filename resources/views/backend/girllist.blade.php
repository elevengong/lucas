@extends("backend.layout.layout")
@section("content")
    <script type="text/javascript" src="<?php echo asset( "/resources/views/backend/js/include/girls.js?ver=1.0"); ?>"></script>
    <section class="Hui-article-box">
        <div class="Hui-article">
            <input type="hidden" id="hid_tid" value="0" />
            <article class="cl pd-20">
                <div class="text-c">
                    <form id="frm_admin" action="/backend/girls/girllist" method="post" >
                        {{csrf_field()}}
                        <input type="text" class="input-text" style="width:250px" placeholder="输入名字" id="seach_uname" name="searchword" value="{{isset($searchData['searchword'])?$searchData['searchword']:''}}">
                        <select name="area_id"  class="input-text" style="width:100px">
                            <option value="0">全部</option>
                            @foreach($areas as $area)
                                <option value="{{$area['id']}}" @if(isset($searchData['area_id']) and $searchData['area_id']==$area['id'])selected="selected"@endif>{{$area['area_name']}}</option>
                            @endforeach
                        </select>
                        <button type="submit" class="btn btn-success radius" id="btn_seach" name="btn_seach">
                            <i class="Hui-iconfont">&#xe665;</i> 搜
                        </button>
                    </form>
                </div>

                <div class="cl pd-5 bg-1 bk-gray mt-20">
                <span class="l">
                    <a href="javascript:;" id="btn_add_category" class="btn btn-primary radius" onclick="opennewgirl();">
                        <i class="Hui-iconfont">&#xe600;</i> 添加美女
                    </a>
                </span>
                </div>

                <div class="mt-20">
                    <table class="table table-border table-bordered table-hover table-bg table-sort">
                        <thead>
                        <tr class="text-c">
                            <th width="40">ID</th>
                            <th width="50">标题</th>
                            <th width="60">封面</th>
                            <th width="50">名字</th>
                            <th width="80">下架时间</th>
                            <th width="80">年龄</th>
                            <th width="80">身高</th>
                            <th width="80">胸围</th>
                            <th width="80">体重</th>
                            <th width="80">Room</th>
                            <th width="80">Area</th>
                            <th width="80">地点</th>
                            <th width="80">价格</th>
                            <th width="80">电话</th>
                            <th width="80">微信</th>
                            <th width="80">状态</th>
                            <th width="80">Note</th>
                            <th width="80">视频列表</th>
                            <th width="80">服务列表</th>
                            <th width="50">浏览次数</th>
                            <th width="50">入库时间</th>
                            <th width="50">操作</th>
                        </tr>
                        </thead>
                        <tbody>

                        @foreach($datas as $data)
                            <tr class="text-c">
                                <td>{{$data['id']}}</td>
                                <td><a style="color: green;" href="/backend/girls/girlphotolist/{{$data['id']}}">{{$data['title']}}</a></td>
                                <td><a href="{{$data['cover']}}" target="_blank"><img src="{{$data['cover']}}" style="width:50px;" /></a></td>
                                <td>{{$data['name']}}</td>
                                <td>{{$data['expire_date']}}</td>
                                <td>{{$data['age']}}</td>
                                <td>{{$data['height']}}</td>
                                <td>{{$data['boobs']}}</td>
                                <td>{{$data['weight']}}</td>
                                <td>{{$data['room']}}</td>
                                <td>{{$data['area']}}</td>
                                <td>{{$data['area_name']}}</td>
                                <td>{{$data['price']}}</td>
                                <td>{{$data['mobile']}}</td>
                                <td>{{$data['wechat']}}</td>
                                <td>{{$data['show']==1?'显示':'隐藏'}}</td>
                                <td>{{$data['note']}}</td>
                                <td>{{$data['videolist']}}</td>
                                <td>{{$data['service']}}</td>
                                <td>{{$data['views']}}</td>
                                <td>{{$data['created_at']}}</td>
                                <td class="td-manage">
                                    <a title="编辑" href="javascript:girledit({{$data['id']}})" class="ml-5"
                                       style="text-decoration:none">
                                        <i class="Hui-iconfont">&#xe6df;</i>
                                    </a>
                                    @if($data['status']!=9)
                                    <a title="删除" href="javascript:girldel('{{$data['id']}}')" class="ml-5"
                                       style="text-decoration:none">
                                        <i class="Hui-iconfont">&#xe6e2;</i>
                                    </a>
                                        @endif
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