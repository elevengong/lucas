@extends("frontend.layout")
@section('content')

    <div class="wrap">
        <div class="index-rbox">
            <div class="i-title"><h1>所有美女</h1></div>
            <div class="pics-box">
                <ul>
                    @foreach($girls as $girl)
                        <li>
                            <a href="/model/{{$girl['id']}}.html" class="img"><img class="lazy" data-original="{{$girl['cover']}}"></a>
                            <p><em>{{$girl['name']}}</em></p>
                            <p>身高：{{$girl['height']}}/罩杯：{{$girl['boobs']}}</p>
                            <p>{{$girl['price']}}</p>
                            @if(!empty(trim($girl['videolist'])))<span class="video"></span>@endif
                            @if($girl['massage']==2)<span class="mass"></span>@endif
                            @if($girl['threesome']==2)<span class="p3"></span>@endif
                        <!-- 如果后台添加时间在7天以内，当做新货-->
                            @if(date("Ymd",strtotime($girl['created_at']))+6 >= date("Ymd"))<span class="new">NEW　新货　{{date("Y/m/d",strtotime($girl['created_at']))}}</span>@endif
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
        <div class="index-lbox">
            <div class="new_title"><h1>最近更新</h1></div>
            <div class="pics-box">
                <ul>
                    @foreach($leftList as $list)
                    <li>
                        <a href="/model/{{$list['id']}}.html" class="img"><img src="{{$list['cover']}}"></a>
                        <p><em>{{$list['name']}}</em></p>
                        <p>身高：{{$list['height']}}/罩杯：{{$list['boobs']}}</p>
                        <p>{{$list['price']}}</p>
                        @if(!empty(trim($list['videolist'])))<span class="video"></span>@endif
                        @if($list['massage']==2)<span class="mass"></span>@endif
                        @if($list['threesome']==2)<span class="p3"></span>@endif
                        @if(date("Ymd",strtotime($list['created_at']))+6 >= date("Ymd"))<span class="new">NEW　新货　{{date("Y/m/d",strtotime($list['created_at']))}}</span>@endif

                    </li>
                    @endforeach
                </ul>
            </div>
        </div>





    </div>
    <script src="<?php echo asset( "/resources/views/frontend/js/jquery-1.11.0.min.js") ?>"></script>
    <script src="<?php echo asset( "/resources/views/frontend/js/jquery.lazyload.js") ?>"></script>
    <script type="text/javascript" charset="utf-8">

        function lazyload(){
            $("img.lazy").lazyload({
                placeholder : "/resources/views/frontend/images/loading.png",
                effect: "fadeIn",
            });
        }
        lazyload();
    </script>
@endsection