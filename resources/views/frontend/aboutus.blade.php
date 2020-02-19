@extends("frontend.layout")
@section('content')
    <script src="<?php echo asset( "/resources/views/frontend/js/layer/layer.js") ?>"></script>
    <div class="wrap">
        <div class="m1100 m_content">
            <div class="mn" id="main_message">
                <div class="bm">
                    <div class="bm_h bbs">
                        <h3 class="xs2">联系我们</h3>
                    </div>
                    <div>

                        <div id="main_messaqge_L4IM3">
                            <div class="loginform" style="height: 500px;">

                                <div style="margin-top: 50px;font-size:25px;">
                                    微信：<em>{{isset($base['weixin'])?$base['weixin']:''}}</em>
                                </div>
                                <div style="margin-top: 50px;font-size:25px;">
                                    {!! $png !!}
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>






    </div>

    <script src="<?php echo asset( "/resources/views/frontend/js/baseCheck.js") ?>"></script>
    <script src="<?php echo asset( "/resources/views/frontend/js/login.js") ?>"></script>
@endsection