<?php

namespace App\Http\Controllers\backend;

use App\Model\Girls;
use App\Model\Comments;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\MyController;

class CommentController extends MyController
{

    public function lists(Request $request){
        $searchData = array();
        if($request->isMethod('post')){
            $searchData['searchword'] = request()->input('searchword');
            $searchData['status'] = request()->input('status');
            $comments = Comments::select('comments.*','girls.name')
                ->leftJoin('girls',function ($join){
                    $join->on('comments.g_id','=','girls.id');
                });
            if(!empty($searchData['searchword']))
            {
                $comments->where('comments.nickname','like','%'.$searchData['searchword'].'%');
            }
            if($searchData['status'] != 3)
            {
                $comments->where('comments.status',$searchData['status']);
            }
            $comments = $comments->orderBy('comments.id', 'asc')->paginate($this->backendPageNum);

        }else{
            $comments = Comments::select('comments.*','girls.name')
                ->leftJoin('girls',function ($join){
                    $join->on('comments.g_id','=','girls.id');
                })
                ->where('comments.status',0)->orderBy('comments.id','asc')->paginate($this->backendPageNum);

        }

        $regex = '/\[em(.*)\]/iU';
        $replacement = '<img src="/resources/views/frontend/images/face/$1.gif">';
        foreach ($comments as $key => $comment){
            $comments[$key]['content'] = str_replace(PHP_EOL,'<br>',$comment['content']);
            $comments[$key]['content'] = preg_replace($regex,$replacement,$comment['content']);
        }
        return view('backend.commentlist', ['comments' => $comments,'searchData' => $searchData])->with('admin', session('admin'));
    }

    //批量通过审核
    public function batchsend(Request $request,$status){
        if($request->isMethod('post')){
            $input=$request->all();
            unset($input['_token']);

            if(!isset($_REQUEST['selected']))
            {
                $reData['status'] = 0;
                if($status == 1){
                    $reData['msg'] = "请选择要通过审核的评论";
                }else{
                    $reData['msg'] = "请选择不能通过审核的评论";
                }


            }else{
                $ids = $input['selected'];
                foreach ($ids as $key => $id) {
                    Comments::where('id',$id)->update(['status'=>$status,'updated_at' => time()]);
                }
                $reData['status'] = 1;
                if($status == 1){
                    $reData['msg'] = "批量审核成功";
                }else{
                    $reData['msg'] = "批量不能通过成功";
                }
            }
            echo json_encode($reData);
        }

    }


}