<?php

namespace App\Http\Controllers\backend;

use App\Model\Girls;
use App\Model\Nation;
use App\Model\Girlphotos;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\MyController;

class GirlsController extends MyController
{

    public function girllist(Request $request){
        $searchData = array();

        if($request->isMethod('post')){
            $searchData['searchword'] = request()->input('searchword');
            $searchData['status'] = request()->input('status');
            $result = Girls::select('girls.*','nation.nation','nation.flag')
                ->leftJoin('nation',function ($join){
                    $join->on('nation.id','=','girls.nation_id');
                });
            if(!empty($searchData['searchword']))
            {
                $result->where('girls.name','like','%'.$searchData['searchword'].'%');
            }
            if($searchData['status']!='')
            {
                $result->where('girls.status',$searchData['status']);
            }
            if($searchData['status']=='')
            {
                $result->where('girls.status','!=',9);
            }
            $girlsArray = $result->orderBy('girls.id', 'desc')->paginate($this->backendPageNum);
        }else{
            $girlsArray = Girls::select('girls.*','nation.nation','nation.flag')
                ->leftJoin('nation',function ($join){
                    $join->on('nation.id','=','girls.nation_id');
                })->where('girls.status','!=',9)
                ->orderBy('girls.id', 'desc')->paginate($this->backendPageNum);
        }
        $statusArray = array(
            '0' => '有空',
            '1' => '在上钟',
            '2' => '休息中',
            '3' => '下架',
            '9' => '已删除'
        );
        return view('backend.girllist', ['datas' => $girlsArray,'status' => $statusArray,'searchData' => $searchData])->with('admin', session('admin'));

    }

    public function girladd(Request $request){
        if($request->isMethod('post'))
        {
            $input=$request->all();
            unset($input['_token']);
            $result = Girls::create($input);
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
            $nationArray = Nation::select('id','nation')->orderBy('id','asc')->get()->toArray();
            return view('backend.girladd',['nations' => $nationArray]);
        }
    }

    public function girledit(Request $request,$id){
        if($request->isMethod('post'))
        {
            $input=$request->all();
            unset($input['_token']);
            $result = Girls::where('id',$id)->update($input);
            if ($result) {
                $reData['status'] = 1;
                $reData['msg'] = "修改成功";
            } else {
                $reData['status'] = 0;
                $reData['msg'] = "修改失败";
            }
            echo json_encode($reData);
        }else{
            $girlArray = Girls::find($id)->toArray();
//            $serviceString = $girlArray['service'];
//            $serviceArray = explode(PHP_EOL,trim($serviceString));
//            print_r($serviceArray);exit;

            $nationArray = Nation::select('id','nation')->orderBy('id','asc')->get()->toArray();
            return view('backend.girledit', ['girl' => $girlArray,'nations' => $nationArray]);
        }

    }

    public function girlphotolist($id)
    {
        $photos = Girlphotos::where('g_id',$id)->orderBy('id','asc')->get()->toArray();
        return view('backend.girlphotolist',['photos' => $photos,'id' => $id]);
    }

    public function girlphotodelete($id){
        $result = Girlphotos::destroy($id);
        if ($result) {
            $data = array('status' => 1, 'msg' => "删除成功");
            return json_encode($data);
        } else {
            $data = array('status' => 0, 'msg' => "删除失败");
            return json_encode($data);
        }
    }

    public function girlphotoadd(Request $request,$id)
    {
        if($request->isMethod('post'))
        {
            $input=$request->all();
            unset($input['_token']);
            $result = Girlphotos::create($input);
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
            return view('backend.girlphotoadd',['id' => $id]);
        }
    }

    public function delete($id)
    {
        $result = Girls::where('id',$id)->update(['status' => 9]);
        if ($result) {
            $data = array('status' => 1, 'msg' => "删除成功");
            return json_encode($data);
        } else {
            $data = array('status' => 0, 'msg' => "删除失败");
            return json_encode($data);
        }

    }





    public function webuploader(Request $request,$id){
        if($request->isMethod('post'))
        {
            // Make sure file is not cached (as it happens for example on iOS devices)
            header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
            header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
            header("Cache-Control: no-store, no-cache, must-revalidate");
            header("Cache-Control: post-check=0, pre-check=0", false);
            header("Pragma: no-cache");
            if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
                exit; // finish preflight CORS requests here
            }



            if ( !empty($_REQUEST[ 'debug' ]) ) {
                $random = rand(0, intval($_REQUEST[ 'debug' ]) );
                if ( $random === 0 ) {
                    header("HTTP/1.0 500 Internal Server Error");
                    exit;
                }
            }
            // 5 minutes execution time
            @set_time_limit(5 * 60);
            $targetDir = 'public/upload_tmp';
            $uploadDir = 'public/uploads/'.date('Ymd');

            $cleanupTargetDir = true; // Remove old files
            $maxFileAge = 5 * 3600; // Temp file age in seconds

            // Create target dir
            if (!file_exists($targetDir)) {
                @mkdir($targetDir);
            }

            // Create target dir
            if (!file_exists($uploadDir)) {
                @mkdir($uploadDir);
            }

            // Get a file name
            if (isset($_REQUEST["name"])) {
                $fileName = $_REQUEST["name"];
            } elseif (!empty($_FILES)) {
                $fileName = $_FILES["file"]["name"];
            } else {
                $fileName = uniqid("file_");
            }

            $fileName = date('YmdHis').rand(1,999).$fileName;

            $filePath = $targetDir . DIRECTORY_SEPARATOR . $fileName;
            $uploadPath = $uploadDir . DIRECTORY_SEPARATOR . $fileName;

// Chunking might be enabled
            $chunk = isset($_REQUEST["chunk"]) ? intval($_REQUEST["chunk"]) : 0;
            $chunks = isset($_REQUEST["chunks"]) ? intval($_REQUEST["chunks"]) : 1;

            // Remove old temp files
            if ($cleanupTargetDir) {
                if (!is_dir($targetDir) || !$dir = opendir($targetDir)) {
                    die('{"jsonrpc" : "2.0", "error" : {"code": 100, "message": "Failed to open temp directory."}, "id" : "id"}');
                }

                while (($file = readdir($dir)) !== false) {
                    $tmpfilePath = $targetDir . DIRECTORY_SEPARATOR . $file;

                    // If temp file is current file proceed to the next
                    if ($tmpfilePath == "{$filePath}_{$chunk}.part" || $tmpfilePath == "{$filePath}_{$chunk}.parttmp") {
                        continue;
                    }

                    // Remove temp file if it is older than the max age and is not the current file
                    if (preg_match('/\.(part|parttmp)$/', $file) && (@filemtime($tmpfilePath) < time() - $maxFileAge)) {
                        @unlink($tmpfilePath);
                    }
                }
                closedir($dir);
            }


// Open temp file
            if (!$out = @fopen("{$filePath}_{$chunk}.parttmp", "wb")) {
                die('{"jsonrpc" : "2.0", "error" : {"code": 102, "message": "Failed to open output stream."}, "id" : "id"}');
            }

            if (!empty($_FILES)) {
                if ($_FILES["file"]["error"] || !is_uploaded_file($_FILES["file"]["tmp_name"])) {
                    die('{"jsonrpc" : "2.0", "error" : {"code": 103, "message": "Failed to move uploaded file."}, "id" : "id"}');
                }

                // Read binary input stream and append it to temp file
                if (!$in = @fopen($_FILES["file"]["tmp_name"], "rb")) {
                    die('{"jsonrpc" : "2.0", "error" : {"code": 101, "message": "Failed to open input stream."}, "id" : "id"}');
                }
            } else {
                if (!$in = @fopen("php://input", "rb")) {
                    die('{"jsonrpc" : "2.0", "error" : {"code": 101, "message": "Failed to open input stream."}, "id" : "id"}');
                }
            }

            while ($buff = fread($in, 4096)) {
                fwrite($out, $buff);
            }

            @fclose($out);
            @fclose($in);

            rename("{$filePath}_{$chunk}.parttmp", "{$filePath}_{$chunk}.part");

            $index = 0;
            $done = true;
            for( $index = 0; $index < $chunks; $index++ ) {
                if ( !file_exists("{$filePath}_{$index}.part") ) {
                    $done = false;
                    break;
                }
            }
            if ( $done ) {
                if (!$out = @fopen($uploadPath, "wb")) {
                    die('{"jsonrpc" : "2.0", "error" : {"code": 102, "message": "Failed to open output stream."}, "id" : "id"}');
                }

                if ( flock($out, LOCK_EX) ) {
                    for( $index = 0; $index < $chunks; $index++ ) {
                        if (!$in = @fopen("{$filePath}_{$index}.part", "rb")) {
                            break;
                        }

                        while ($buff = fread($in, 4096)) {
                            fwrite($out, $buff);
                        }

                        @fclose($in);
                        @unlink("{$filePath}_{$index}.part");
                    }

                    flock($out, LOCK_UN);
                }
                @fclose($out);
            }


            //入库
            $res = Girlphotos::create(['g_id'=> $id, 'photo'=> '/'.$uploadPath]);

            // Return Success JSON-RPC response
            die('{"jsonrpc" : "2.0", "result" : null, "id" : "id"}');




        }else{
            return view('backend.webuploader',['id' => $id]);
        }


    }






}