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
                <div class="box"><div class="rt"><span>2019-12-18 21:40</span><strong>KRATOS</strong> Says:</div><div class="con">找了这么多的服务，没有一个像她们一样的会调试运行<img src="/resources/views/frontend/images/face/7.gif" /><img src="/resources/views/frontend/images/face/4.gif" /><img src="/resources/views/frontend/images/face/8.gif" /></div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="20527" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-12-09 00:23</span><strong>key</strong> Says:</div><div class="con">How they could reply the message ; from international number it is not allowed?</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="19826" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-12-03 23:50</span><strong>蒙面歌王</strong> Says:</div><div class="con">最佳组合从新出发<br />
                        提供花样百出的非一般服务<br />
                        让你每一分每一秒都享受着<br />
                        皇帝般的服务也让你学会<br />
                        手脚口全身一起并用去抵挡她们<br />
                        那两双手两双脚两个口的挑逗<br />
                        高手们可以去跟他们切磋一下<br />
                        不会不懂的朋友可以去学两招<br />
                        见识一下她们又多好多厉害<br />
                        听人讲是没用的要自己去体会一下才知道<br />
                        保证值回票价<br />
                        请狼友们温柔善待别搞伤搞痛小妹妹<br />
                    </div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="19578" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-11-30 17:47</span><strong>狼友</strong> Says:</div><div class="con">这两位美女服务态度好，房间干净卫生，不赶时间，工作认真， 服务齐全，也热情招待。从头到尾都让我很满意。其他女孩我不约了。我要定你了!下面爽了，如果有朋友不满足裆前的房事，还没开始享受就一泄千里可以加微信YINDUDAIGou688 只需一粒就能让你金枪不倒，一晚多次非常轻松，朋友们可以试一下，享受帝王的待遇。<br />
                    </div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="19471" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-11-28 00:38</span><strong>蒙面歌王</strong> Says:</div><div class="con">这对苏姓小姐妹完美的配搭口活精湛<br />
                        啪啪了得从浴室阳台沙发床上都很用心的为你服务<br />
                        不管是两人三人男人女人都能玩<br />
                        而且花样多结无冷场真的很会玩<br />
                        这对小姐妹有职业道德有用心做服务<br />
                        你会是开心的来笑着回去<br />
                        快去体验不要错过这种希有的服务<br />
                        好好善待她们俩<br />
                    </div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="19393" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-11-24 09:33</span><strong>独乐</strong> Says:</div><div class="con">Tarma 双飞 FR for 苏雅芩 (YQ)，苏可可 (KK)<br />
                        <br />
                        Best tarma of 2019！<br />
                        <br />
                        Thanks to bro XX for the live demo video and his commando and Alan\'s juicy FR. Initially was planning to (单飞) single fly with YQ (sexy and sulty) when she was here but didn\'t have the time. So this time Mai Tu Liao, quickly booked a slot and since KK (cute and pretty) is also here accompanied by YQ, and opportunity is rare, why NOT try their tarma? The 3P actions indeed turned out really outrageous! Unforgettable ! Don\'t try U will regret!<br />
                        <br />
                        Greeted me was KK (cladded in a black sexy lingerie) who received me with a welcome kiss. YQ (also cladded in a black translucent lingerie) came forward to hug me. Both quickly undressed me and lead me to the bathroom. Action started with KK gave me thorough soapy rub on my back while YQ cleaned my cock and frontal with her teasing hands. After bath, KK lead me to the bed where YQ set the mood with sexy moaning music playing and a disco moving lights encompassing the entire bedroom.<br />
                        <br />
                        Sensually, KK asked me to lie down and she started to stick out her tongue to french kiss me. Can felt the soft type of french she engaged with me. This lasted for the next 5 minutes while I fingered her hairy pussy…slowly it became miost and wet. YQ move down to BBBJ me and oh my gosh….the (longest I ever faced) deep throat BBBJ was furious and she simply loves my cock. My Ieft toe trying to toe-fuck YQ and my left hand trying to squeeze her B+ boobs. YQ makes 2 rounds of BBBJ …KK actually have to ask YQ to stop BBBJ me while I relaxed seeing both of them exchanged roles. This time, KK then move down to BBBJ me and YQ gave me a sensational deep french kiss. She stick out her entire tongue and swirled round my mouth and lips with passion. This was simply the best french I ever met (as compared to MP Ruby). The tarma pair playing became more intense now when I saw them frenching each other in a lesbian act and they move forward to give me a 3-way french. OMG … 2 tongues are placed touching my tongue and we french together. Sibei Shiok! <br />
                        <br />
                        Then they told me: , “我们要同时亲你的小弟弟了”。 Immediately my penis was surrounded by two tongues sensually kissed and licked on both sides. Their mouths and tongues also touched each other. That moment was truly enjoyable~shiok! YQ then cupped my entire cock while KK licked my balls. For once I thought the action stopped but I was surprised KK took turn to cup my entire cock while YQ licked my balls this time. The double BBBJ is the best I encountered in 2019. So far the best tarma pair!<br />
                        <br />
                        YQ continued to give me a deep throat BBBJ while I finger her pussy and felt her wet juice not long after. KK moved up to french me and my hand also busy grapping her boobs. Both seems to enjoy and moaned heavily. <br />
                        <br />
                        Then I was asked to lie down and KK capped me and rode on me. Oh my! She rode quite fast and seems enjoying the orgasm waves that flow through …the bed was almost rocking too. YQ wanted to see more and asked us to changed posture and now I am on top pumping KK. While I am pushing my cock in and out of the wet pussy of KK ….YQ came forward to caress me with deep french kiss again. Before I can recovered from the DFK, another tongue (KK\'s) came in to join us. 3 way french round 2.<br />
                        <br />
                        I wanted to FJ YQ … and KK\'s orgasm seems to come after pumping her quite a while and I signaled to change to bonk YQ.<br />
                        <br />
                        I did YQ in a traditional position and continue pumping her while using my right index finger to finger fucked KK. KK automatically grapped my wrist to push in and out vigorously and oh my …her pussy was wet again. <br />
                        <br />
                        I begin to concentrate bonking YQ and increased my pace. This time I saw YQ showed signs of ecstasy and agony on her facial expression. <br />
                        <br />
                        “独乐哥哥，不要停，快一点，我要来了！”<br />
                        “妳来吧！我也要来了”<br />
                        <br />
                        Soon… argh argh argh argh “我来了！” I exclaimed with ecstacy of ejaculation…Sibei Shiok! Unforgettable 此刻太难忘太刺激了！<br />
                        <br />
                        I can tell you … the feeling is so heavenly enjoyable that I would never experienced before ever. It was an unforgettable adventure!<br />
                        <br />
                        There are other details which I can\'t possibly described fully in my FR. But the main juicy story is mentioned here. Try it for yourself for what a wonderful tarma adventure you could experienced! <br />
                        <br />
                        苏雅芩 (YQ) , 苏可可 (KK) ratings in order:<br />
                        Looks 8 (sexy and seducing) , 8.2 (cute and demure),<br />
                        Body 8 34B+, 8 34B+<br />
                        BBBJ 9.5, 8.5<br />
                        Kiss/Frenching: 10, 8.9<br />
                        FJ 8.5, 8.5 (Both are good)<br />
                        GFE: 9, 9 (Both listened attentively to me singing song and gave me overall good services)<br />
                        Damage: $320/1/1 hr<br />
                        <br />
                        RTF: Yes! … if there is still an opportunity and extra cash.<br />
                        <br />
                        Truthful FR by 独乐 <br />
                        Dated 20 November 2019</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="19298" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-11-21 11:25</span><strong>华仔</strong> Says:</div><div class="con">Today 双飞 雅芩<br />
                        FR for : 可可 <br />
                        Looks: 9/10 she got a cute and playful smile<br />
                        Skin:8.5 smooth <br />
                        Boobs: 8.5 B+ nice handful <br />
                        Figure: 8/10 <br />
                        Massage: skip <br />
                        BBBJ: 9/10 <br />
                        Painting - yes little hair <br />
                        FJ: 9/10 <br />
                        French- 10/10 auto<br />
                        Service attitude:10/10SuperFriendly<br />
                        Location: Hotel<br />
                        Market: H<br />
                        <br />
                        Today 双飞<br />
                        FR for :雅芩<br />
                        Looks: 8.510 she got a slut face<br />
                        Skin:8.5 smooth <br />
                        Boobs: 8.8B+ nice handful <br />
                        Figure: 8.5/10 <br />
                        Massage: skip <br />
                        BBBJ: 9.5/10 <br />
                        Painting - yes clean shaven<br />
                        FJ: 9.5/10<br />
                        French- 10/10 auto<br />
                        Service attitude:10/10SuperFriendly<br />
                        Location: Hotel<br />
                        Market: H<br />
                        <br />
                        Went to the room start Frenching non stop , straight away strip each other . Then we proceed to the shower together (3p)both of them clean you while I busy wash 4 boobs and 2pussy with both hand. Imagine the scene. Suddenly 雅芩squat down and start blowing. When 可可 French and Arouse me all over. This is only the first 10 mins I’m there. <br />
                        Proceeds to dry up . Seat at the sofa. Damn  both of them come Attack me with 雅芩start blowing me while可可 play with me . I start to finger 可可and she’s wet . Nice !! Slowly 可可 also join in the blowing. Both gal my cock for quite awhile. They also will also French each other and play with each other . What you see in porn is what you will get here. <br />
                        Went to the bed 雅芩still blow me for a Long time while 可可 push her pussy at my face . How to say no . Lick finger suck her pussy until she move away haha. <br />
                        Switch 雅芩 push her pussy to my face while 可可blow me . 可可 blow is gentle but still nice . Can dt. I just lie there enjoy. <br />
                        After I fuck both of them in 3 different positions each . All the while if you are not Frenching them . They will French each other or lick each other nipple or pussy. Finally I cim in 可可 and she SUCK every drop 15/10. Then 雅芩 came over and suck again . 10/10 <br />
                        Left with a happy man . </div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="19216" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-11-20 13:16</span><strong>我喜欢口爆</strong> Says:</div><div class="con">苏可可终于来了，听了很多苏雅琴说的双飞，一直很期待！<br />
                        如果我要真的写细节，应该会到达5000个字都写不完，我就注重几个重点！<br />
                        <br />
                        苏雅琴和苏可可是第一对可以姐妹互玩的，两姐妹一起舌吻，互相舔，而是不是那种普通双飞你看见的！<br />
                        这样的配合度真的超级超级给力，当我在写的时候，我看见了视频，大概我想说的都在视频里面了，各位大神可以点击看看！<br />
                        <br />
                        苏雅琴 和 苏可可都很漂亮，要遇到漂亮的，又可以这样玩的，再新加坡可能也是数一数二的啦！<br />
                        她们都很耐心的招待我，很有耐心的吹，三人舌吻是重要环节之一，超舒服的感觉.<br />
                        <br />
                        后来就是双人口活，看着两个嘴巴一直给我舔给我吹，有钱也未必买得到！<br />
                        剩下的我就不说了，让各位大神去体验！<br />
                        <br />
                        我会给10/10 满分！<br />
                        <br />
                        不试一定后悔！</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="19191" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-11-20 10:49</span><strong>david</strong> Says:</div><div class="con">上条评论手贱点了隐藏，再发一次吧。<br />
                        雅芩小姐姐已经很熟悉啦，听闻可可小姐姐也来了，出差回来第一件事就是约包夜。<br />
                        所有双飞体验最好的一次，互动感满分AV感爆棚。<br />
                        细节不表，TT的酒店小姐姐们都不坑。<br />
                        话说1000的定价实在是太超值。<br />
                        ——————<br />
                        早上更新：腰酸腿软已被榨干，待我养精蓄锐择日再战<img src="/resources/views/frontend/images/face/3.gif" /><br />
                    </div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="19186" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-11-20 00:26</span><strong>艾伦</strong> Says:</div><div class="con">苏雅芩 & 苏可可 双飞 fr:<br />
                        <br />
                        Have my first ever tarma lesbian play, greeting at door with 2 lady already in their cosplay outfit (they got many cosplay outfit find out yourself) looks good. First time saw 苏可可 wow really slim and chio le.. small chat with both of them and 可可 come closely to me and with our eye contact already aiming at each other, I move my mouth to her and slowly french and become deep french kiss and later 雅芩 join in the fun and have 3 way dfk.. both of them help me remove my t shirt and short and continue to lick me all over me.. I tell them that I haven bath and 3 of us go into the bath room for more action. While bathing both continue to Attack me, one dfk me another Bbbj me and after that swap and Attack again. Super shiok already. After dry out, they started they r lesbian french kiss and ask me join them and 3 way french again. Next they slowly lick all over me and Bbbj me one by one follow by double Bbbj while looking at me, omg! After that 可可 come and auto french me and 雅芩 continue DT me.. they will alternate change and play with me. Next I tell them I Wan paint them one by one.. shiok.. and after that we swap and 可可paint雅芩 & I paint 可可 so crazy..  after that 雅芩 paint 可可 and I join in and paint together </div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="19176" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-11-03 20:42</span><strong>Abner</strong> Says:</div><div class="con">The beautiful young girl,  with a very tight lower body and a very friendly attitude, can meet your reasonable requirements. she is absolutely a good gem. don\'t miss her</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18709" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-11-03 19:48</span><strong>楚霸王</strong> Says:</div><div class="con">跟她约会真的是从头爽到尾，特别特别刺激，胸大屁股翘，皮肤白，从进门那一刻就开始挑逗，鸡鸡一下就硬了，不管是脱衣服，还是在浴室她都不放过挑逗你，口活太好了在洗手间忍半天愣是没忍住被她口出来了，每个细节都很到位，无论是口活，还是床上功夫真的非常非常棒，还真没见过哪个妹子像她这么激情的，又骚又饥渴，水还多，简直就是尤物，而且价格特实惠，比那些200以上的好太多。</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18707" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-11-01 00:21</span><strong>nick</strong> Says:</div><div class="con">有点相见恨晚 太迟发现这位小姐姐了<br />
                        今天约了 服务好到爆表 女友感也是<br />
                        进门就问个不停 边舌吻边脱衣<img src="/resources/views/frontend/images/face/2.gif" /><br />
                        然后洗澡也是由头洗到脚 好彻底 浴室里已经很多服务了<br />
                        洗完出来 问我要穿什么衣服 还有播放音乐 啊哈哈哈<br />
                        她的口活和骑马术好厉害 控制不好真的会翻车<img src="/resources/views/frontend/images/face/4.gif" /><br />
                        百回大战后 一起抱着高潮<img src="/resources/views/frontend/images/face/2.gif" /><br />
                        小姐姐多几天回国了<br />
                        等你回来再约喔<img src="/resources/views/frontend/images/face/2.gif" /></div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18616" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-29 17:27</span><strong>小情兽</strong> Says:</div><div class="con">这是第三次约雅芩了，一般我是难得回头的，她的确是个活非常好的妹子，约她绝不会后悔，不过她比较忙有点难约，我都是提前一天约的，价钱又很划算，我之前约过很多180到260都不如她，现在来的妹子很多都挂200以上，可是什么服务都没有，很多时候很失望，还好遇到了雅芩妹子，态度好，服务棒，有种相见恨晚的感觉，趁她在我得多约几次了。</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18531" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-29 01:18</span><strong>程冠希</strong> Says:</div><div class="con">昨天晚上很晚了和妹子聊天，感觉还不错，那么晚还很耐心的回我，于是我就约早上七点，我到的时候问妹子要不要带早餐她说不用谢谢！但我还是买了点牛奶水果，还买了份饭，去了之后妹子好开心一直谢我，让她吃完再做她说不饿，不能让我等的，接下来妹子就抱抱我摸摸我奶头开始扒光我了，然后牵着我的手一起去了浴室，洗着洗着她开口舔我奶头，又慢慢往下舔一点一点的舔，慢慢的吸，再加上吸水冲击的感觉特别好，她很会挑逗，尺度轻重把握得很好，真的是女朋友的感觉，在浴室洗了十多分钟后，帮我擦干身上的水，接着就牵着我的大鸡鸡去了大床上，直接坐我身上把奶头赛我嘴里，接着向我耳朵吹口气开始舔耳朵，从上到下一直舔，我又有点怕痒但是又挺舒服，就忍着让她自己发挥，舔完了她还给我刮痧这时候特别痒实在忍不住，太刺激了，我就告诉她你不用这么累，直接吃鸡鸡好了，她还说你人太好了，我不累的，接着含住我的鸡鸡一直舔，一直吸差点没忍住就出来了，我说再吃我就要出来了，妹子拿出了TT给我戴上了坐上来了，里面特别特别紧，还会夹人没做几下我就交枪了，看了下时间还不到一个小时，妹子洗完澡就抱着我没多久就睡着了，我也不想走就想这样多抱抱她真舒服。</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18511" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-27 14:19</span><strong>苏雅芩</strong> Says:</div><div class="con"><img src="/resources/views/frontend/images/face/21.gif" /><img src="/resources/views/frontend/images/face/21.gif" /><img src="/resources/views/frontend/images/face/21.gif" />【回国倒计时】<img src="/resources/views/frontend/images/face/21.gif" /><img src="/resources/views/frontend/images/face/21.gif" /><img src="/resources/views/frontend/images/face/21.gif" /><br />
                        <br />
                        <img src="/resources/views/frontend/images/face/21.gif" /><img src="/resources/views/frontend/images/face/21.gif" /><img src="/resources/views/frontend/images/face/21.gif" />【回国倒计时】<img src="/resources/views/frontend/images/face/21.gif" /><img src="/resources/views/frontend/images/face/21.gif" /><img src="/resources/views/frontend/images/face/21.gif" /><br />
                        <br />
                        <img src="/resources/views/frontend/images/face/21.gif" /><img src="/resources/views/frontend/images/face/21.gif" /><img src="/resources/views/frontend/images/face/21.gif" />【回国倒计时】<img src="/resources/views/frontend/images/face/21.gif" /><img src="/resources/views/frontend/images/face/21.gif" /><img src="/resources/views/frontend/images/face/21.gif" /></div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18461" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-26 03:23</span><strong>暖男</strong> Says:</div><div class="con">小巧玲珑，皮肤又白又光滑，性格非常好，态度也不错，活就更好了，我对舌吻和口交的要求有点高，可是她完全出乎意料非常满意，真的很懂男人，小舌头灵活得要人命，又会挑逗，又很骚，眼神也到位，在洗手间就吃得你不要不要的，在别的妹子面前我确实有点难出水，但是在她这我却败了，真的非常赞，妹子等我过几天再战。<br />
                    </div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18402" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-24 16:27</span><strong>艾倫</strong> Says:</div><div class="con">苏雅芩:<br />
                        <br />
                        Look: 7.5 (SYT with eyelash and make up, got a cute voice)<br />
                        Boob: B (Natural)<br />
                        Figure: 8.4 (small size build, fair and smooth skin, best asset peaky ass)<br />
                        Cosplay: yes <br />
                        Frenching: 9.9 (one of the best I encounter, non stop)<br />
                        Bbbj: 9.5 (Deep throat type and wet with eye contact, good suction my type and blow more than 10min shiok)<br />
                        Painting: yes (not trimmed but still can access, no smell and can paint Long)<br />
                        Fj: 9.6 (initial and try few position before ending with doggy style with DFK)<br />
                        Gfe: 9.8 (大大咧咧大方开放玩的开心)<br />
                        Rtf: confirm (so far one of the best I encounter this year, maybe got chemistry)<br />
                        Damage: $160 with tip</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18365" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-23 08:51</span><strong>小情兽</strong> Says:</div><div class="con">又骚又会玩，在别的妹子面前我还能坚持蛮久的，在她这光前戏我就已经快撑不住了，太厉害的，太会玩，舌头太狠了，口活厉害的一比，小屁股跟装了电动马达似的，不愧是是调情高手，这次出来得太快了，真想好好征服她的，我一定要把功夫练好再来一战。</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18332" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-22 04:16</span><strong>拔屌无情</strong> Says:</div><div class="con">约之前我就叫她穿上视频里的衣服等我，进门一看果，太好看了，身材火辣，隐隐约约的透视装加吊带丝袜，那画面真的无法形容，也让我无法自拔，一下子鸡鸡就翘起来了，妹子扑过来帮我宽衣解带，还把舌头主动申出来挑逗我。<br />
                        接着我们就一起去了浴室，全身上下给我洗得干干净净，还给我来个水中萧，爽死了，回到床上，她开始全身漫游，小舌头很灵活，慢慢的舔，轻轻的吸，还用穿着丝袜的脚滑我腿，特舒服，指间也没闲着，这个环节就用了十多分钟，真的很认真，时不时还把自己的咪咪头掏出来自己舔，看得我真爽，她还拉着我的手往她下面蹭，鲍鱼都蹭出水了，她一直不停的口我舌头真的太灵活了，吸得又舒服，我差点没忍住要出来了，我让她停一会让我缓缓，我吃了会奶才让她带套开始的，妹子要女上位，我怕她太狠了，我自己来的，总之这次太满意了</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18280" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-21 04:14</span><strong>我不是帅哥</strong> Says:</div><div class="con">雅芩是一位很漂亮的女生，个性小巧玲珑的，还比照片好看，很性感,身材非常好，整个过程都热情，用心服务，口活是我约过所有妹子中最好的一位，啪啪功夫一流，各种姿势都配合得非常好，她比较会玩又特别骚，本来我可以坚持很久的，她的口活太厉害了，光口的时候我就差点交抢了，后来我想缓一缓让她躺下我伺候她，我才舔一会会她就抱着我的头很享受，水我出来好多，我全部吃掉了，真美味，看她那么性奋，她脸突然好红，我忍不住要进去了，我在上面做了才两分钟，她要换姿势从后面来说这样她比较容易高潮，结果才进去一会会被她疯狂的电臀给震出来了，这一招真心狠，下次来我还要这样玩，现在想起来，我还是硬邦邦的，很想抽空跟她来个包夜的，可是最近事情太多了，这女孩很值得支持和疼爱。放心约!</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18213" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-20 21:28</span><strong>侠哥</strong> Says:</div><div class="con"><br />
                        样貌:9/10 漂亮美丽，是照片本人<br />
                        胸部:10/10 34C 全天然大奶，奶头粉色，摸起來很舒服很柔软。<br />
                        身材:小巧玲珑，前凸后翘，皮肤白皙<br />
                        口活：10/10无套又深喉，舌头非常非常的灵活，把我吹上天…舒服到會受不了！<br />
                        爱爱: 10/10 很配合，从镜子前到沙发到站立的做，又换到床上，做的时候娇踹声很好听，<br />
                        鲍鱼少毛，粉色无臭，一摸就湿了。可以感受到她的豪野和奔放，整个过程很舒服和完美。<br />
                        女友感:10/10 很好谈，会帮你脱衣服，陪你洗澡，洗的时候还有各种调情，待你无微不至。<br />
                        回头：肯定会。给了一点小费，抱抱道別。<br />
                    </div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18203" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-20 21:12</span><strong>闷骚男</strong> Says:</div><div class="con">今天下午约了这位妹妹，一进门就来个抱抱实在太好了，很漂亮，胸大，身材棒，口活一流，现在还在想着她，回味无穷。简直要人命。太爽了！觉得她是我约过的女孩当中服务最好的，女友感十足，如果有机会，一定还会再约，她说快要回国了，希望还有下文。</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18202" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-20 20:10</span><strong>李先生</strong> Says:</div><div class="con">不得不说她的口活了得，小身材大味道，皮肤白又滑，性格开朗又体贴，不论服务，还是态度都是非常赞的，对于这个价钱觉得得值。</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18199" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-20 04:02</span><strong>格格不入</strong> Says:</div><div class="con">我第一次约雅芩是早上七点她也接，这次晚上两点多她也接，看她这么拼也是不容易啊！我通常不写评语的但雅芩就不同了。服务超级好，态度更好，就算再累再晚服务也不马虎，把我搞得太爽了，约过那么多妹子，还是她最令我最满意，女友感超赞又谈得来，真的爱死她了，每次不管早上，还是晚上约她，都不会拒绝，从不喊累，而且活真的很棒，又很细致，是我约过活最棒的妹子，如果早点认识你我就不会白花那么多冤枉钱了。</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18176" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-18 17:27</span><strong>奶爸</strong> Says:</div><div class="con">态度好，服务好，配合度高，胸部天然，手感特好，皮肤白滑，啪啪的时候特激情，值得体验，不容错过。</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18129" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-18 11:49</span><strong>啪啪已啪啪</strong> Says:</div><div class="con">今天约了雅芩妹子。进门看到妹妹，比照片好看，身材非常棒，小巧玲珑，皮肤又白又滑又嫩的，一进门就来个拥抱，还亲我耳朵，温柔又热情，口活超级好，舌头很厉害，超级享受，啪啪更是沒话说，我简直要升天了，细节我不说了，各位自己来感受，反正绝对的值，服务得没得说，特别好。特别好，请大家好好爱惜雅芩妹子。一定回头，女朋友感觉爆表。</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18120" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-16 21:32</span><strong>路飞</strong> Says:</div><div class="con">名字: 苏雅芩<br />
                        样貌: 9/10，漂亮，性感<br />
                        胸部: 10/10，34C奶，天然，很好抓，爱不释手，咪咪美<br />
                        身材: 9/10， 身材很好，前凸后翘，皮肤又滑又白<br />
                        女友感: 9/10，一进房门就给我一个拥抱，还有亲亲<br />
                        爱爱: 10/10， 洗澡时在浴室就开始玩我的鸡鸡。鸡鸡太舒服了，硬邦邦的，她喊口热水来口我，真的好爽，好刺激，指甲也上下划动，麻麻的酥酥的，都快受不了了，我喊停，妹子就继续洗，全身洗干净后，就抓着我鸡鸡去镜子面前再继续，没一会又换到沙发上，再是床上，她这么会玩，太刺激了，我用舌头舔，用嘴巴吸她的奶头，也舔她的鲍鱼。看了妹妹一眼，她好喜欢。妹妹也有点湿了。接着妹妹也向我进攻，又舔了我的鸡鸡，全身上下，又吸又舔，妹妹的舌头太灵活了，真的很爽，我先从后面上，这画面太美了，屁股好翘。妹妹下面好紧，她一直喊不要停，她的娇踹声真的声声入耳，越听越兴奋。我感觉快高潮了，立刻又换到我在上面。把妹妹的双脚拉起，再猛猛的插。进出进出，妹妹声音越来越大，越来越销魂，脸也红起来。最后忍不住射了，真的是爽歪歪到天堂!<br />
                        <br />
                        放心我还会再来的。。。<br />
                    </div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18083" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-16 01:18</span><strong>华佗</strong> Says:</div><div class="con">今天约了雅芩妹子。进门看到妹妹，比照片好看，身材非常棒，小巧玲珑，皮肤又白又滑又嫩的，一进门就来个拥抱，还亲我耳朵，温柔又热情，口活超级好，舌头很厉害，超级享受，啪啪更是沒话说，我简直要升天了<img src="/resources/views/frontend/images/face/7.gif" />细节我不说了<img src="/resources/views/frontend/images/face/10.gif" />各位自己来感受，反正绝对的值，服务得没得说，特别好。特别好，请大家好好爱惜雅芩妹子。一定回头，女朋友感觉爆表。<img src="/resources/views/frontend/images/face/4.gif" /><img src="/resources/views/frontend/images/face/4.gif" /><img src="/resources/views/frontend/images/face/4.gif" /></div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18061" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-15 02:28</span><strong>型男</strong> Says:</div><div class="con">这个妹子太热情了，一进门就像自己的女朋友一样抱着你，特别活泼开朗，床戏也是非常棒的，特别主动又很配合，女友感十足，希望各位狼友善待妹子。</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18042" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-14 17:18</span><strong>John</strong> Says:</div><div class="con">She is very good at playing and very coquettish.</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18023" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-14 17:05</span><strong>维尼</strong> Says:</div><div class="con">This girl is very good and the service is very ok.<br />
                    </div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="18021" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-13 13:03</span><strong>Tim</strong> Says:</div><div class="con">She is very small and cute, and she is also very active in helping me undress and take off my shoes. She helps me wash my whole body, bathe my cat and have sex. It is very good to cooperate with oral work. Unfortunately, very few girls do this.</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="17989" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-13 12:25</span><strong>p3</strong> Says:</div><div class="con">妹子服务好，性格好，很健谈自然熟，有女朋友的感觉，无论态度和服务都是对得起这个价格的，不赶时间，活也很细致，尤其是口活真的很棒，下面也很紧还夹，给妹子点赞，这次体验真是念念不忘，这个价真是太值了。</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="17987" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-12 20:13</span><strong>金箍棒</strong> Says:</div><div class="con">今天终于约到了到了这位小姐姐，好开心。<br />
                        开门一看确实是我喜欢的类型小巧玲珑，<br />
                        该大的地方大，对于这种可爱又性感的女孩子，<br />
                        我真的毫无抵抗力，简单聊了几句妹子就开始亲吻我，<br />
                        边吻边脱我衣服，然后一个反手抓着我的金箍棒，<br />
                        回眸一笑来个电眼，拉我进浴室帮我从上到下洗得很干净，<br />
                        边洗边调情，开是是舌吻，紧接着用奶头在我的身体上下游走，<br />
                        太爽了，舌头也是忙个没停，口活太好，太会挑逗了，<br />
                        第一次遇到口活这么好的妹子，实在忍不住在洗手间被口爆了一次，<br />
                        洗完之后，她就问我要穿什么类型的情趣内衣，我问有女仆装吗？<br />
                        妹子微微一笑，还真有，穿上后感觉好极了，<br />
                        进入主题突然拉我去镜子面前各种挑逗我又开始舌吻，<br />
                        慢慢舌头又开始忙了起来，我从上面往下看，这种视觉感真的是太好了，<br />
                        看着她一口接一口的将我吃掉真的很享受这感觉，<br />
                        一边口我屁股翘老高了，我隐约看到了粉色的小鲍鱼，<br />
                        貌似有些饱满，看得我真忍不住把她抱上床，狂舔鲍鱼，<br />
                        才跳几下鲍鱼就流好多水，她的两腿也一直在颤抖，<br />
                        一脸通红，舔得妹子受不了，她一直求我快把金箍棒给她，<br />
                        金箍棒一进去就夹得我好紧，真会夹，什么都试玩完了，<br />
                        完事还帮你按摩，但是妹子好调皮总是忍不住按我的金箍棒，<br />
                        我是有事不然再加两个钟了，这次体验特别好，妹子性格好服务一级棒。</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="17958" class="replybut">Reply回复</a></div><div class="sun"><div class="box"><div class="rt"><span>2019-10-21 10:44</span><strong>小肥</strong> Says:</div><div class="con">那么厉害喔，送你一次口爆➕一次爱爱</div></div></div></div><div class="box"><div class="rt"><span>2019-10-06 22:03</span><strong>Jackson555</strong> Says:</div><div class="con">Her service is good but her looks does not justify the 200 price range.<br />
                        <br />
                    </div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="17749" class="replybut">Reply回复</a></div><div class="sun"><div class="box"><div class="rt"><span>2019-10-07 06:54</span><strong>curious man</strong> Says:</div><div class="con">thanks for highlighting. cant reply on the pics. </div></div></div></div><div class="box"><div class="rt"><span>2019-10-02 20:42</span><strong>Bern Bern</strong> Says:</div><div class="con">名字: 苏雅芩<br />
                        样貌: 8.5/10，年轻，漂亮，性感。<br />
                        胸部: 9/10，34C奶，天然，很好抓，咪咪美。<br />
                        身材: 9/10， 身材很好，前凸后翘，皮肤又滑又白。<br />
                        女友感: 9/10，一进房门就给我一个拥抱，也有亲亲。<br />
                        口活:9/10 ，舌头灵敏，活一流，就像吃冰淇淋一样，爽。<br />
                        爱爱: 10/10， 很会玩，豪放，调情高手，配合度高。<br />
                        回头:肯定的。</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="17611" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-10-02 17:05</span><strong>任达华</strong> Says:</div><div class="con">苏雅芩小姐姐美丽动人，雪白的肌肤之上，一双巨乳快要直插上天。服务没得说，亲切而体贴，特别让人舒服</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="17601" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-09-29 17:51</span><strong>BFG</strong> Says:</div><div class="con">第一二次约妹妹了。第一次约就被她年轻、清秀的样貌深深打动了。加上她那细心又周到的服务，我隔天又约了她。这女孩很棒，大家别走宝了。This is my second time looking for her. Was mesmerized by her youthful and sweet looking features the first time we met. Her service was top notch and very pleasurable. I went to look for her again the very next day. This is a gem not to be missed.</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="17506" class="replybut">Reply回复</a></div><div class="sun"></div></div><div class="box"><div class="rt"><span>2019-09-28 05:10</span><strong>牛芒</strong> Says:</div><div class="con">Managed to catch a session with her. I would say that she is the wildest girl I have tried in recent years!<br />
                        <br />
                        Photo is her but definately beautified. But the price justifies it. Or else she would be easily above 200 price tag.<br />
                        <br />
                        Her skin is fair and smooth, and she treats you like a king. Main thing is that she loves sex! She\'s wild! She\'s wild!<br />
                        <br />
                        Those who\'s into service and sex should try her out. I would say its worth it.</div><div class="re"><a href="javascript:void(0)" data-gid="3246" data-pid="17458" class="replybut">Reply回复</a></div><div class="sun"><div class="box"><div class="rt"><span>2019-12-18 21:41</span><strong>KRATOS</strong> Says:</div><div class="con">数量×1</div></div></div></div>		</div>
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
    <script src="<?php echo asset( "/resources/views/frontend/js/jquery.min.js") ?>"></script>
    <script src="<?php echo asset( "/resources/views/frontend/js/jquery.fancybox.js") ?>"></script>
    <script src="<?php echo asset( "/resources/views/frontend/js/layer/layer.js") ?>"></script>
    <script src="<?php echo asset( "/resources/views/frontend/js/clipboard.min.js") ?>"></script>
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
                var addhtml='<div class="reply"><form class="formPost"><input type="hidden" name="pid" value="'+pid+'"><input type="hidden" name="gid" value="'+gid+'"><div class="row"><textarea name="body" class="fbody" id="fbody" style="height:160px"></textarea></div><div class="row face"><ul><li><img src="/resources/views/frontend/images/face/0.gif" data-name="[em0]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/1.gif" data-name="[em1]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/2.gif" data-name="[em2]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/3.gif" data-name="[em3]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/4.gif" data-name="[em4]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/5.gif" data-name="[em5]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/6.gif" data-name="[em6]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/7.gif" data-name="[em7]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/8.gif" data-name="[em8]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/9.gif" data-name="[em9]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/10.gif" data-name="[em10]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/11.gif" data-name="[em11]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/12.gif" data-name="[em12]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/13.gif" data-name="[em13]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/14.gif" data-name="[em14]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/15.gif" data-name="[em15]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/16.gif" data-name="[em16]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/17.gif" data-name="[em17]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/18.gif" data-name="[em18]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/19.gif" data-name="[em19]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/20.gif" data-name="[em20]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/21.gif" data-name="[em21]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/22.gif" data-name="[em22]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/23.gif" data-name="[em23]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/24.gif" data-name="[em24]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/25.gif" data-name="[em25]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/26.gif" data-name="[em26]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/27.gif" data-name="[em27]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/28.gif" data-name="[em28]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/29.gif" data-name="[em29]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/30.gif" data-name="[em30]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/31.gif" data-name="[em31]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/32.gif" data-name="[em32]" class="fimg"></li><li><img src="/resources/views/frontend/images/face/33.gif" data-name="[em33]" class="fimg"></li></ul></div><div class="row"><label>昵称</label><input name="nickname" value="'+nickname+'"><button class="btn">提交</button></div></form></div>';
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