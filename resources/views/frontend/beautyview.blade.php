@extends("frontend.layout")
@section('content')
<div class="showbox wrap">
    <div class="i-title"><h1>Girl Details/女孩详细</h1></div>
    <div class="fix mb20 pt15">
        <div class="imgbox"><img src="{{$girl['cover']}}" alt="{{$girl['title']}}"></div>
        <div class="about">
            <div class="girl-title">{{$girl['title']}}</div>
            @if(!empty($girl['name']))<p>Name 姓名 : {{$girl['name']}}</p>@endif
            @if(!empty($girl['age']))<p>Age 年龄 : {{$girl['age']}}</p>@endif
            @if(!empty($girl['height']))<p>Height 身高 : {{$girl['height']}}</p>@endif
            @if(!empty($girl['boobs']))<p>Boobs 胸围 : {{$girl['boobs']}}</p>@endif
            @if(!empty($girl['weight']))<p>Weight 体重 : {{$girl['weight']}}</p>@endif
            @if(!empty($girl['room']))<p>Room {{$girl['room']}}</p>@endif
            @if(!empty($girl['area']))<p><label>Area 地区：</label>{{$girl['area']}}</p>@endif
            @if(!empty($girl['area_name']))<p><label>Location 地点：</label>{{$girl['area_name']}}</p>@endif
            @if(!empty($girl['price']))<p><label>Price 价格：</label><big>{{$girl['price']}}</big></p>@endif
            @if(!empty($girl['overnight']))<p><label>OverNight 包夜：</label><big>{{$girl['overnight']}}</big></p>@endif
            @if(!empty($girl['mobile']))<p><label>Mobile 电话：</label><big>{{$girl['mobile']}}</big></p>@endif

            @if(!empty($girl['wechat']))
            <p><label>WeChat 微信：</label><big>{{$girl['wechat']}}</big>
                <button type="button" class="btn copyWeixin" data-clipboard-text="{{$girl['wechat']}}" style="width:150px;height:30px;font-size:14px;border-radius:3px;">点击复制微信号</button>
            </p>
            @endif

            <p style="color:red;">Please quote seen from {{$base['web_nickname']}}! 请说{{$base['web_nickname']}}看见的！</p>
            <div class="contact">
                <a href="tel:{{$girl['mobile']}}" class="tel">Click to CALL</a>
                <a href="sms:{{$girl['mobile']}}?&body=你好美女，我在【{{$base['domain']}} {{$base['web_nickname']}}网】看到你的，请问你什么时候有空，可以约吗？" class="sms">Click to SMS</a>
            </div>
        </div>
    </div>

    @if(!empty($videosArray))
    <div class="video mb20">
        <div class="i-title"><h1>Video/视频</h1></div>
        <div style="text-align:center;">
            @foreach($videosArray as $video)
            <video src="{{$video}}" controls="controls" style="height:400px;width:550px;background-color:#000;"></video>
            @endforeach
        </div>
    </div>
    @endif

    @if(!empty($serviceArray))
    <div class="mb20">
        <div class="i-title"><h1>Service/服务</h1></div>
        <ul class="servicelist">
            @foreach($serviceArray as $service)
            <li>
                <p>{{$service}}</p>
            </li>
            @endforeach
        </ul>
    </div>
    @endif

    @if(!empty($girl['note']))
    <div class="mb20">
        <div class="i-title"><h1>Notes/笔记</h1></div>
        <div style="font-size:18px;line-height:180%;color:black;padding:0 10px;"><p>{{$girl['note']}}</p></div>
    </div>
    @endif

    <div class="more-pics">
        <div class="my-gallery fix">
            @foreach($photos as $photo)
            <figure>
                <a data-size="1000x1332" href="{{$photo['photo']}}">
                    <img src="{{$photo['photo']}}">
                </a>
            </figure>
            @endforeach
        </div>
    </div>




    <div class="comment">
        <div class="i-title"><h1>Comment/留言评论</h1></div>
        <div class="comment-list">

            @foreach($comments as $comment)
            <div class="box">
                <div class="rt">
                    <span style="color:black !important;">{{date("Y-m-d H:i:s",strtotime($comment['created_at']))}}</span>
                    <strong>{{$comment['nickname']}}</strong> Says:
                </div>
                <div class="con">
                    {!! $comment['content'] !!}
                </div>
                <div class="re"><a href="javascript:void(0)" data-gid="{{$comment['g_id']}}" data-pid="{{$comment['id']}}" class="replybut">Reply回复</a></div>

                <div class="sun">
                    @foreach($comment['children'] as $sun)
                        <div class="box">
                            <div class="rt">
                                <span style="color:black !important;">{{date("Y-m-d H:i:s",strtotime($sun['created_at']))}}</span>
                                <strong>{{$sun['nickname']}}</strong> Says:
                            </div>
                            <div class="con">{{$sun['content']}}</div>

                        </div>
                    @endforeach

                </div>
            </div>
            @endforeach


    </div>
    <div class="reply">
        <form class="formPost">
            {{csrf_field()}}
            <a href="#reply" name="reply"></a>
            <input type="hidden" name="pid" value="0">
            <input type="hidden" name="gid" value="{{$girl['id']}}">
            <div class="row"><textarea name="body" class="fbody" id="fbody" style="height:160px"></textarea></div>
            <div class="row face">
                <ul>
                    <li><img src="/resources/views/frontend/images/face/0.gif" data-name="[em0]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/1.gif" data-name="[em1]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/2.gif" data-name="[em2]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/3.gif" data-name="[em3]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/4.gif" data-name="[em4]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/5.gif" data-name="[em5]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/6.gif" data-name="[em6]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/7.gif" data-name="[em7]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/8.gif" data-name="[em8]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/9.gif" data-name="[em9]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/10.gif" data-name="[em10]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/11.gif" data-name="[em11]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/12.gif" data-name="[em12]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/13.gif" data-name="[em13]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/14.gif" data-name="[em14]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/15.gif" data-name="[em15]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/16.gif" data-name="[em16]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/17.gif" data-name="[em17]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/18.gif" data-name="[em18]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/19.gif" data-name="[em19]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/20.gif" data-name="[em20]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/21.gif" data-name="[em21]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/22.gif" data-name="[em22]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/23.gif" data-name="[em23]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/24.gif" data-name="[em24]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/25.gif" data-name="[em25]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/26.gif" data-name="[em26]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/27.gif" data-name="[em27]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/28.gif" data-name="[em28]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/29.gif" data-name="[em29]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/30.gif" data-name="[em30]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/31.gif" data-name="[em31]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/32.gif" data-name="[em32]" class="fimg"></li>
                    <li><img src="/resources/views/frontend/images/face/33.gif" data-name="[em33]" class="fimg"></li>
                </ul>
            </div>
            <div class="row">
                <label>Nickname 昵称</label>
                <input name="nickname" value="{{isset($username)?$username:''}}">
                <label style="margin-left:20px;">Content 内容</label>
                <input name="tel" placeholder="内容隐藏，Content Concealed">
                <button class="btn">Submit 提交</button>
            </div>
            <div class="row" style="font-size:18px;color:black;text-align:center;padding-top:10px;">
                <p>If there are fake photos or bad service, Leave your phone number or <strong>wechat ID</strong> for us to verify</p>
                <p>如果有假照片 或者 服务不好的地方 您可以留下手机号码或微信号方便我们核实</p>
            </div>
        </form>
    </div>
</div>
<input type="hidden" id="nick" value="{{isset($username)?$username:''}}">
<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="pswp__bg"></div>
    <div class="pswp__scroll-wrap">
        <div class="pswp__container">
            <div class="pswp__item"></div>
            <div class="pswp__item"></div>
            <div class="pswp__item"></div>
        </div>
        <div class="pswp__ui pswp__ui--hidden">
            <div class="pswp__top-bar">
                <div class="pswp__counter"></div>
                <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>
                <button class="pswp__button pswp__button--share" title="Share"></button>
                <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>
                <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>
                <div class="pswp__preloader">
                    <div class="pswp__preloader__icn">
                        <div class="pswp__preloader__cut">
                            <div class="pswp__preloader__donut"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                <div class="pswp__share-tooltip"></div>
            </div>
            <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button>
            <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button>
            <div class="pswp__caption">
                <div class="pswp__caption__center"></div>
            </div>
        </div>
    </div>
</div>
<link rel="stylesheet" href="<?php echo asset( "/resources/views/frontend/css/photoswipe.css?ver=1.0") ?>">
<link rel="stylesheet" href="<?php echo asset( "/resources/views/frontend/css/default-skin.css?ver=1.0") ?>">

<script src="<?php echo asset( "/resources/views/frontend/js/photoswipe.min.js") ?>"></script>
<script src="<?php echo asset( "/resources/views/frontend/js/photoswipe-ui-default.min.js") ?>"></script>
<script src="<?php echo asset( "/resources/views/frontend/js/initPhotoSwipeFromDOM.js") ?>"></script>

<script>initPhotoSwipeFromDOM('.my-gallery');</script>

<script src="<?php echo asset( "/resources/views/frontend/js/jquery.fancybox.js") ?>"></script>


<script src="<?php echo asset( "/resources/views/frontend/js/insertAtCaret.js") ?>"></script>
<script type="text/javascript">
    $(function() {
        var clipboard = new Clipboard('.copyWeixin');
        clipboard.on('success', function(e) {
            layer.msg('微信号复制成功，请打开微信添加好友粘贴加好友');
        });
        clipboard.on('error', function(e) {
            layer.msg('微信号复制失败');
        });
        $(document).on("click",".fimg",function(){
            var bqtitle=$(this).attr('data-name');
            $('#fbody').insertAtCaret(bqtitle);
        });
        $('.fancybox').fancybox();
        $(document).on("click",".replybut",function(){
            var gid=$(this).attr('data-gid');
            var pid=$(this).attr('data-pid');
            var nickname=$('#nick').val();
            var addhtml='<div class="reply"><form class="formPost">{!! csrf_field() !!}<input type="hidden" name="pid" value="'+pid+'"><input type="hidden" name="gid" value="'+gid+'"><div class="row"><textarea name="body" class="fbody" id="fbody" style="height:160px"></textarea></div><div class="row face"><ul><li><img src="/resources/views/frontend/images/face/0.gif" data-name="[em0]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/1.gif" data-name="[em1]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/2.gif" data-name="[em2]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/3.gif" data-name="[em3]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/4.gif" data-name="[em4]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/5.gif" data-name="[em5]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/6.gif" data-name="[em6]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/7.gif" data-name="[em7]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/8.gif" data-name="[em8]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/9.gif" data-name="[em9]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/10.gif" data-name="[em10]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/11.gif" data-name="[em11]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/12.gif" data-name="[em12]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/13.gif" data-name="[em13]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/14.gif" data-name="[em14]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/15.gif" data-name="[em15]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/16.gif" data-name="[em16]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/17.gif" data-name="[em17]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/18.gif" data-name="[em18]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/19.gif" data-name="[em19]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/20.gif" data-name="[em20]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/21.gif" data-name="[em21]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/22.gif" data-name="[em22]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/23.gif" data-name="[em23]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/24.gif" data-name="[em24]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/25.gif" data-name="[em25]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/26.gif" data-name="[em26]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/27.gif" data-name="[em27]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/28.gif" data-name="[em28]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/29.gif" data-name="[em29]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/30.gif" data-name="[em30]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/31.gif" data-name="[em31]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/32.gif" data-name="[em32]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/33.gif" data-name="[em33]" class="fimg"></li></ul></div><div class="row"><label>昵称</label><input name="nickname" value="'+nickname+'"><button class="btn">提交</button></div></form></div>';
            $('.reply').remove();
            $(this).parent('.re').parent('.box').append(addhtml);
        });
        $(document).on("submit",".formPost",function(){
            var post_data=$(this).serialize();
            var that=this;

            $.post('/reply',post_data,function(jdata){
                if (jdata.status==2){
                    layer.msg(jdata.info,{shift:0,time:3000,icon:1});
                    $(that).hide();
                }else{
                    layer.msg(jdata.info,{shift:0,time:3000,icon:2});
                }
            },'json');

            return false;
        });
    });
</script>
@endsection