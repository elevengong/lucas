<?php

namespace App\Http\Controllers\frontend;

use App\Model\Caiji;
use App\Model\Girls;
use App\Model\Girlphotos;
use App\Model\Area;

use Illuminate\Http\Request;
use App\Http\Controllers\MyController;
use App\Http\Requests;


class CaijiController extends MyController{

    //采集列表
    public function caijilist(){
        exit;
        $contents = file_get_contents('https://4ni52.com/model-area/west/');
        $cid = 5;
        $contentList = $this->cut('class="models"','</main>',$contents);
        $listArray = explode('class="model-card"> ',$contentList);
//        print_r($listArray);exit;
        foreach ($listArray as $array){
            $inputData = array();
            $inputData['url'] = $this->cut('href="https://','" title',$array);
            if(!empty($inputData['url']))
            {
                $inputData['url'] = 'https://'.$inputData['url'];
                $inputData['cid'] = $cid;
                Caiji::create($inputData);
            }
        }
    }

    //采集内容
    public function caijicontent(){
        exit;
        set_time_limit(0);
        $cid = 5;
        $lists = Caiji::where('status',1)->where('id','>=',84)->where('cid',$cid)->orderBy('id','asc')->get()->toArray();
        foreach ($lists as $data)
        {
            $inputData = array();
            $content = file_get_contents($data['url']);
            $contentDetail = $this->cut('class="details-wrapper">','class="conlink"',$content);
            $inputData['name'] = trim($this->strCutByStr($contentDetail,'<div>Name 昵称: ','</div>'));
            $inputData['title'] = $inputData['name'];
            $inputData['age'] = trim($this->strCutByStr($contentDetail,'<div>Age 年龄: ','</div>'));
            $inputData['height'] = trim($this->strCutByStr($contentDetail,'<div>Height 身高: ','</div>'));
            $inputData['boobs'] = trim($this->strCutByStr($contentDetail,'<div>Boobs 胸围: ','</div>'));
            $inputData['room'] = 'Include Room '.trim($this->strCutByStr($contentDetail,'<div>Include Room','</div>'));
            $inputData['area_id'] = 2;
            $inputData['area'] = trim($this->strCutByStr($contentDetail,'<div>Location 地点: ','</div>'));
            $inputData['price'] = trim($this->strCutByStr($contentDetail,'<td>Damage 价格:&nbsp;</td><td>','</td>'));
            $inputData['mobile'] = trim($this->strCutByStr($contentDetail,'<div>Mobile 联络号码: ','</div>'));
            if(strstr($inputData['price'],'Massage'))
            {
                $inputData['massage'] = 1;
            }

            $inputData['service'] = '';
            $contentOther = $this->cut('services-section">','<h2>More Photos/更多照片',$content);
            $servicesArray = explode('/li>',$contentOther);
//            print_r($servicesArray);exit;
            foreach ($servicesArray as $service)
            {
                $temp = trim($this->strCutByStr($service,'<li>','<'));
                if(!empty($temp)){
                    $inputData['service'] .= $temp.PHP_EOL;
                }
            }
            $inputData['service'] = rtrim($inputData['service'],PHP_EOL);
            $videoArray = explode('<source',$contentOther);
            $inputData['videolist'] = '';
            foreach ($videoArray as $video)
            {
                $tempVideo = trim($this->strCutByStr($video,'src="','"'));
                if(!empty($tempVideo))
                {
                    $inputData['videolist'] .= $tempVideo.PHP_EOL;
                }
            }
            $inputData['videolist'] = rtrim($inputData['videolist'],PHP_EOL);

            $inputData['expire_date'] = date('Y-m-d', strtotime ("+2 month", time()));

            $g_id = Girls::create($inputData)->id;


            $photoList = $this->cut('class="photo-grid"> ','class="tabbox">',$content);
            $photoArray = explode('<div><a',$photoList);

            foreach ($photoArray as $url)
            {
                $inputPhoto = array();
                $photo = $this->strCutByStr($url,'href="','"');
                if(!empty($photo)){
                    $inputPhoto['g_id'] = $g_id;
                    $inputPhoto['photo'] = $photo;
                    Girlphotos::create($inputPhoto);
                }
            }

        }
    }

    //采集图片
    public function caijiphoto(){
        exit;
        set_time_limit(0);
        $photos = Girlphotos::where('id','>=',840)->orderBy('id','asc')->get()->toArray();
        foreach ($photos as $photo)
        {
            $inputData = array();
            $photoUrl = "public/uploads/20200110/".time().$photo['id'].'.jpg';
            copy($photo['photo'],$photoUrl);
            $inputData['photo'] = '/'.$photoUrl;
            Girlphotos::where('id',$photo['id'])->update($inputData);
            sleep(1);

        }

    }

    public function randromcover(){
        $girls = Girls::orderBy('id','asc')->get()->toArray();

        foreach ($girls as $girl)
        {
            $updateData = array();
            $photos = Girlphotos::where('g_id',$girl['id'])->get()->toArray();
            $randromNum = array_rand($photos);
//            echo $photos[$randromNum]['photo'];
            $updateData['cover'] = $photos[$randromNum]['photo'];
            Girls::where('id',$girl['id'])->update($updateData);

        }

    }

    //截取
    private function cut($begin,$end,$str){
        $b = mb_strpos($str,$begin) + mb_strlen($begin);
        $e = mb_strpos($str,$end) - $b;
        return mb_substr($str,$b,$e);
    }

    //截取
    private function strCutByStr(&$str, $findStart, $findEnd = false, $encoding = 'utf-8'){

        if(is_array($findStart)){

            if(count($findStart) === count($findEnd)){

                foreach($findStart as $k => $v){

                    if(($result = strCutByStr($str, $v, $findEnd[$k], $encoding)) !== false){

                        return $result;

                    }

                }

                return false;

            }else{

                return false;

            }

        }



        if(($start = mb_strpos($str, $findStart, 0, $encoding)) === false){

            return false;

        }



        $start += mb_strlen($findStart, $encoding);



        if($findEnd === false){

            return mb_substr($str, $start, NULL, $encoding);

        }



        if(($length = mb_strpos($str, $findEnd, $start, $encoding)) === false){

            return false;

        }



        return mb_substr($str, $start, $length - $start, $encoding);

    }

}