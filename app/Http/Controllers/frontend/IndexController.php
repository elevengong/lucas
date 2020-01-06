<?php

namespace App\Http\Controllers\frontend;

use App\Model\Girls;
use App\Model\Girlphotos;
use App\Model\Attribute;
use App\Model\Members;
use App\Model\Area;

use Illuminate\Http\Request;
use App\Http\Controllers\MyController;
use App\Http\Requests;
use Crypt;


class IndexController extends MyController{

    private $attribute;
    private $base;
    private $category;

    public function __construct()
    {
//        date_default_timezone_set('Asia/Shanghai');
        $this->attribute = Attribute::orderBy('id','asc')->get()->toArray();

        foreach ($this->attribute as  $item)
        {
            $this->base[$item['key']] = $item['value'];
        }

        //栏目
        $this->category = Area::orderBy('priority','desc')->get()->toArray();

    }

    public function index(){
        $girls = Girls::select('girls.id','girls.cover','girls.name','girls.height','girls.videolist','girls.boobs','girls.price','girls.massage','girls.threesome','girls.created_at')
            ->where('girls.show',1)->orderBy('girls.id', 'desc')->get()->toArray();

        return view('frontend.index',['girls' => $girls,'base' => $this->base,'category' => $this->category])->with('username',session('username'))->with('coin',session('coin'));

    }



    public function beauty($id){
        $girl = Girls::select('girls.*','area.area_name')
            ->leftJoin('area',function ($join){
                $join->on('area.id','=','girls.area_id');
            })->where('girls.id',$id)->get()->toArray();
        if(empty($girl))
        {
            return redirect("/");
        }

        $this->base['title'] = $girl[0]['title'].' - '.$this->base['title'];

        $service = trim($girl[0]['service']);
        if(empty($service))
        {
            $serviceArray = '';
        }else{
            $serviceArray = explode(PHP_EOL,$service);
        }
        $videos = trim($girl[0]['videolist']);
        if(empty($videos))
        {
            $videosArray = '';
        }else{
            $videosArray = explode(PHP_EOL,$videos);
        }
        $photos = Girlphotos::where('g_id',$id)->get()->toArray();
        return view('frontend.beautyview',
            ['girl'=> $girl[0],'serviceArray' => $serviceArray,'photos' => $photos,'videosArray' => $videosArray,'attribute' => $this->attribute,'base'=>$this->base,'category'=>$this->category]
        );
    }

    public function contact(){
        return view('frontend.contactus',['number' => $this->number,'telegram' => $this->telegram,'weixin' => $this->weixin]);
    }

    public function login(Request $request){
        if($request->isMethod('post')){
            $loginIp = $request->getClientIp();
            $username = request()->input('username');
            $pwd = request()->input('pwd');

            $result = Members::where('username',$username)->get()->toArray();
            if($result){
                if($result[0]['status']==1){
                    $stored_pwd= Crypt::decrypt($result[0]['pwd']);
                    if($stored_pwd == $pwd){
                        $last_login_time = date('Y-m-d h:i:s',time());
                        $result1 = Members::where('id',$result[0]['id'])->update(['last_login_ip'=>$loginIp, 'last_login_time'=>$last_login_time]);
                        session(['username' => $username, 'uid' => $result['0']['id'],'coin' => $result['0']['coin']]);

                        $data['status'] = 1;
                        $data['msg'] = '登陆成功，请等待跳转';
                    }else{
                        $data['status'] = 0;
                        $data['msg'] = '用户不存在或密码错误';
                    }
                }else{
                    $data['status'] = 0;
                    $data['msg'] = '该用户已被冻结';
                }
            }else{
                $data['status'] = 0;
                $data['msg'] = '用户不存在或密码错误';
            }
            echo json_encode($data);

        }else{
            if(empty(session('username')))
            {

                return view('frontend.login',['base' => $this->base,'category'=>$this->category]);
            }else{
                return redirect('/');
            }

        }

    }

    public function register(Request $request){
        if($request->isMethod('post')){
            $inputData = array();
            $inputData['username'] = request()->input('username');
            $inputData['pwd']= Crypt::encrypt(request()->input('pwd'));
            $inputData['phone'] = request()->input('phone');
            $inputData['mail'] = request()->input('mail');
            $inputData['parent_id'] = request()->input('parent_id');
            $inputData['register_ip'] = $request->getClientIp();

            $result = Members::where('username',$inputData['username'])->get()->toArray();
            if(empty($result))
            {
                $resultIp = Members::where('register_ip',$inputData['register_ip'])->get()->toArray();
                if(empty($resultIp))
                {
                    $insert_result = Members::create($inputData);
                    if($insert_result->id){
                        //注册成功后，如果推荐人ID存在的话，对应的推荐人要加coin
                        if($inputData['parent_id'] != 0)
                        {
                            //检查推荐人ID是否存在
                            $res = Members::where('id',$inputData['parent_id'])->get()->toArray();
                            if(!empty($res))
                            {
                                Members::where('id',$inputData['parent_id'])->increment('coin', $this->base['coin']);
                            }
                        }

                        $reData['status'] = 1;
                        $reData['msg'] = "注册成功";
                    }else{
                        $reData['status'] = 0;
                        $reData['msg'] = "注册失败";
                    }
                }else{
                    $reData['status'] = 0;
                    $reData['msg'] = "该IP地址已注册过，不能再注册";
                }

            }else{
                $reData['status'] = 0;
                $reData['msg'] = "该用户名已被注册";
            }

            echo json_encode($reData);


        }else{
            if(empty(session('username')))
            {
                if(empty(session('agent')))
                {
                    $agentId = 0;
                }else{
                    $agentId = session('agent');
                }
                return view('frontend.register',['base' => $this->base,'category'=>$this->category])->with('agentId', $agentId);
            }else{
                return redirect('/');
            }

        }

    }


    public function logout(Request $request){
        $this->deleteAllSession($request);
        return redirect('/');
    }


    //推荐人入口
    public function agententrance(Request $request,$agent_id){
        session(['agent'=>$agent_id]);
        return redirect('/');
    }

    //栏目
    public function category($id){
        $girls = array();
        if($id != 1000 and $id != 1001)
        {
            $girls = Girls::select('girls.id','girls.cover','girls.name','girls.height','girls.videolist','girls.boobs','girls.price','girls.massage','girls.threesome','girls.created_at')
                ->where('area_id',$id)->where('girls.show',1)->orderBy('girls.id', 'desc')->get()->toArray();

        }elseif ($id == 1000){
            $girls = Girls::select('girls.id','girls.cover','girls.name','girls.height','girls.videolist','girls.boobs','girls.price','girls.massage','girls.threesome','girls.created_at')
                ->where('girls.massage',2)->where('girls.show',1)->orderBy('girls.id', 'desc')->get()->toArray();
        }elseif($id == 1001){
            $girls = Girls::select('girls.id','girls.cover','girls.name','girls.height','girls.videolist','girls.boobs','girls.price','girls.massage','girls.threesome','girls.created_at')
                ->where('girls.videolist','!=','')->where('girls.show',1)->orderBy('girls.id', 'desc')->get()->toArray();
        }
        return view('frontend.index',['girls' => $girls,'base' => $this->base,'category' => $this->category])->with('username',session('username'))->with('coin',session('coin'));

    }
}
