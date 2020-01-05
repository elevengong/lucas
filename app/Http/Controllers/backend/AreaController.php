<?php

namespace App\Http\Controllers\backend;

use App\Model\Area;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\MyController;

class AreaController extends MyController
{

    public function arealist(Request $request){
        if($request->isMethod('post')){

        }else{

            $areaArray = Area::orderBy('id', 'asc')->paginate($this->backendPageNum);
            return view('backend.arealist', ['datas' => $areaArray])->with('admin', session('admin'));
        }
    }

    public function areaadd(Request $request){
        if($request->isMethod('post'))
        {
            $input=$request->all();
            unset($input['_token']);
            $result = Area::create($input);
            if($result->id)
            {
                $reData['status'] = 1;
                $reData['msg'] = "添加成功";
            }else{
                $reData['status'] = 0;
                $reData['msg'] = "添加失败";
            }
            echo json_encode($reData);
        }else{
            return view('backend.areaadd');
        }
    }

    public function delete($id)
    {

        $result = Area::destroy($id);
        if ($result) {
            $data = array('status' => 1, 'msg' => "删除成功");
            return json_encode($data);
        } else {
            $data = array('status' => 0, 'msg' => "删除失败");
            return json_encode($data);
        }

    }

    public function areaedit(Request $request,$id){
        if($request->isMethod('post'))
        {
            $input=$request->all();
            unset($input['_token']);
            $result = Area::where('id',$id)->update($input);
            if ($result) {
                $reData['status'] = 1;
                $reData['msg'] = "修改成功";
            } else {
                $reData['status'] = 0;
                $reData['msg'] = "修改失败";
            }
            echo json_encode($reData);
        }else{
            $Area = Area::find($id)->toArray();
            return view('backend.areaedit', compact('Area'));
        }

    }







}
