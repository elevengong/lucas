<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\MyController;
use App\Model\Members;
use Illuminate\Http\Request;
use Crypt;
use App\Http\Requests;

class MemberController extends MyController
{

    //用户列表
    public function lists(Request $request){
        $searchData = array();
        if($request->isMethod('post')){
            $searchData['searchword'] = request()->input('searchword');

            $result = Members::select('*');
            if(!empty($searchData['searchword']))
            {
                $result->where('username','like','%'.$searchData['searchword'].'%');
            }
            $memberArray = $result->orderBy('id', 'desc')->paginate($this->backendPageNum);


        }else{
            $memberArray = Members::orderBy('id', 'desc')->paginate($this->backendPageNum);
        }
        return view('backend.memberlist', ['datas' => $memberArray,'searchData' => $searchData])->with('admin', session('admin'));

    }

    //用户修改
    public function edit(Request $request,$id){
        if($request->isMethod('post')){
            $input=$request->all();
            unset($input['_token']);
            $result = Members::where('id',$id)->update($input);
            if ($result) {
                $reData['status'] = 1;
                $reData['msg'] = "修改成功";
            } else {
                $reData['status'] = 0;
                $reData['msg'] = "修改失败";
            }
            echo json_encode($reData);
        }else{
            $memberArray = Members::find($id)->toArray();
            return view('backend.memberedit', ['member' => $memberArray]);
        }

    }


}