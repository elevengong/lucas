<?php

namespace App\Console\Commands;

use App\Model\Award;
use App\Model\Lottery;
use App\Model\Plan;
use Illuminate\Console\Command;

use QL\QueryList;

class Guangdongshiyixuanwu extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'guangdongshiyixuanwu';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = '采集广东十一选五';

    //自定义变量
    private $caiji_history = '';
    private $caiji_plan = array();

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
        $this->caiji_history = 'https://3221999.com/ElevenFive/getElevenFiveList.do?date=&lotCode=10006';
        $this->caiji_plan = array(
            '34' => 'https://www.997347.com/gd11x5/index.php/index/get_plan/ac/d1q.html',
            '35' => 'https://www.997347.com/gd11x5/index.php/index/get_plan/ac/d2q.html',
            '36' => 'https://www.997347.com/gd11x5/index.php/index/get_plan/ac/d3q.html',
            '50' => 'https://www.997347.com/gd11x5/index.php/index/get_plan/ac/d4q.html',
            '51' => 'https://www.997347.com/gd11x5/index.php/index/get_plan/ac/d5q.html',
            '52' => 'https://www.997347.com/gd11x5/index.php/index/get_plan/ac/zhzdx.html'
        );
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        //采集开奖记录--每五分钟采集一次
        $logHistoryDir = storage_path('logs/lottery/').DIRECTORY_SEPARATOR.$this->signature.DIRECTORY_SEPARATOR;
        $logHistoryName = date('Ymd',time()).".txt";
        $logPlanDir = storage_path('logs/plan/').DIRECTORY_SEPARATOR.$this->signature.DIRECTORY_SEPARATOR;
        $logPlanName = date('Ymd',time()).".txt";
        $writeContent = date('Y-m-d h:i:s',time()).'--开始采集广东十一选五开奖记录start'."\r\n";
        $this->writeLogs($writeContent,$logHistoryDir,$logHistoryName);

        //通过$signature获取该彩种的l_id
        $lottery = Lottery::select('l_id','status')->where('nickname',$this->signature)->get()->toArray();
        if(empty($lottery))
        {
            $writeContent = date('Y-m-d h:i:s',time()).'--采集广东十一选五不存在end'."\r\n";
            $this->writeLogs($writeContent,$logHistoryDir,$logHistoryName);
            exit;
        }
        if($lottery[0]['status'] == 0)
        {
            $writeContent = date('Y-m-d h:i:s',time()).'--采集广东十一选五没有开启end'."\r\n";
            $this->writeLogs($writeContent,$logHistoryDir,$logHistoryName);
            exit;
        }
        $l_id = $lottery[0]['l_id'];

        //$this->writeLogs(print_r($ql->getData(),true),$logHistoryDir,$logHistoryName);
        $jsonDatas = QueryList::get($this->caiji_history)->getHtml();

        if(empty($jsonDatas))
        {
            $writeContent = date('Y-m-d h:i:s',time()).'--目标网站404'."\r\n";
            $this->writeLogs($writeContent,$logHistoryDir,$logHistoryName);
            exit;
        }
        $datasObj = \GuzzleHttp\json_decode($jsonDatas,true);
        $datas = $datasObj['result']['data'];

        $count = count($datas);
        //echo $datas[0]->preDrawCode;exit;
        for ($i=$count-1;$i>=0;$i--)
        {
            $input = array();
            $qishu = $datas[$i]['preDrawIssue'];
            $qishu_exist = Award::where('l_id',$l_id)->where('qishu',$qishu)->get()->toArray();
            if(empty($qishu_exist))
            {
                $input['l_id'] = $l_id;
                $input['qishu'] = $qishu;
                $input['number'] = trim($datas[$i]['preDrawCode']);
                $input['award_time'] = $datas[$i]['preDrawTime'];
                $input['type1'] = $datas[$i]['sumNum'];
                $input['type2'] = $this->getResult($datas[$i]['sumBigSmall']);
                $input['type3'] = $datas[$i]['sumSingleDouble'] == 0 ? '单' : '双';
                $input['type4'] = $datas[$i]['dragonTiger'] == 0 ? '龙' : '虎';
                $input['type5'] = $this->getThree($datas[$i]['behindThree']);
                $input['type6'] = $this->getThree($datas[$i]['betweenThree']);
                $input['type7'] = $this->getThree($datas[$i]['lastThree']);
                Award::create($input);

            }

        }

        $writeContent = date('Y-m-d h:i:s',time()).'--采集广东十一选五开奖记录采集完成end'."\r\n";
        $this->writeLogs($writeContent,$logHistoryDir,$logHistoryName);

        //开启采集广东十一选五的计划
        $writeContent = date('Y-m-d h:i:s',time()).'--开启采集广东十一选五计划start'."\r\n";
        $this->writeLogs($writeContent,$logPlanDir,$logPlanName);

        foreach ($this->caiji_plan as $key => $value)
        {
            $planDatas = QueryList::get($value)->getHtml();
            //$this->writeLogs(print_r($ql_plan,true),$logHistoryDir,$logHistoryName);exit;
            if(empty($planDatas))
            {
                $writeContent = date('Y-m-d h:i:s',time()).'--目标网站404-'.$value."\r\n";
                $this->writeLogs($writeContent,$logPlanDir,$logPlanName);
                continue;
            }

            $update['detail1'] = $this->cut('color=red><b>','</b>',$planDatas);
            $update['detail2'] = substr($planDatas,strpos($planDatas,'-<br/>')+1);
            if($update['detail1'] == '' and $update['detail2'] == '')
            {
                continue;
            }else{
                Plan::where('p_id',$key)->update($update);
            }
        }

        $writeContent = date('Y-m-d h:i:s',time()).'--采集广东十一选五计划采集完成end'."\r\n";
        $this->writeLogs($writeContent,$logPlanDir,$logPlanName);


        exit;


    }

    private function getResult($number){
        $result = '';
        switch ($number){
            case 0:
                $result = '大';
                break;
            case 1:
                $result = '小';
                break;
            case 2:
                $result = '和';
                break;
        }
        return $result;
    }

    private function getThree($number){
        $result = '';
        switch ($number){
            case 0:
                $result = '杂六';
                break;
            case 1:
                $result = '半顺';
                break;
            case 2:
                $result = '顺子';
                break;
        }
        return $result;
    }



    private function writeLogs($Content,$dir,$txtFileName){
        $this->createDir($dir);
        $myfile = fopen($dir.$txtFileName, "a");
        fwrite($myfile, $Content);
        fclose($myfile);
        return true;

    }

    //创建文件夹
    private function createDir($path)
    {
        if (is_dir($path)) {
            return true;
        } else {
            $res = mkdir($path, 0777, true);
            return true;
        }

    }

    private function cut($begin,$end,$str){
        $b = mb_strpos($str,$begin) + mb_strlen($begin);
        $e = mb_strpos($str,$end) - $b;

        return mb_substr($str,$b,$e);
    }


}
