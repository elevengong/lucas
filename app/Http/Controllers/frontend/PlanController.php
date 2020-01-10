<?php

namespace App\Http\Controllers\frontend;

use App\Model\Girls;

use Illuminate\Http\Request;
use App\Http\Controllers\MyController;
use App\Http\Requests;

class PlanController extends MyController{

    public function plantask(){
        //updated_at asc 前$num个赋值最新的时间

        $num = 15;//要更新的个数
        $lastGirls = Girls::orderBy('updated_at','asc')->get()->take($num)->toArray();


        foreach ($lastGirls as $girl)
        {
            $nowDateTime = date("Y-m-d H:i:s",time());
            Girls::where('id',$girl['id'])->update(['updated_at'=>$nowDateTime]);
        }
        echo "ok";exit;

    }









}