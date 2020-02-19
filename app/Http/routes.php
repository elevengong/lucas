<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::group(['middleware' => ['web']],function () {

 //---------------------前端------------------------------------------------
    Route::get('/','frontend\IndexController@index');
    Route::get('/model/{id}.html','frontend\IndexController@beauty')->where(['id' => '[0-9]+']);

    Route::get('/aboutus.html','frontend\IndexController@aboutus');

    //登陆注册
    Route::any('/login.html','frontend\IndexController@login');
    Route::any('/register.html','frontend\IndexController@register');
    Route::get('/user/logout','frontend\IndexController@logout');

    //推荐入口
    Route::get('/agent/{agent_id}','frontend\IndexController@agententrance')->where(['agent_id' => '[0-9]+']);

    //栏目
    Route::get('/category/{id}.html','frontend\IndexController@category')->where(['id' => '[0-9]+']);

    //搜索
    Route::any('/search.html','frontend\IndexController@search');

    //评论
    Route::post('/reply','frontend\IndexController@reply');

    //采集
//    Route::any('/caijilist','frontend\CaijiController@caijilist');
//    Route::any('/caijicontent','frontend\CaijiController@caijicontent');
//    Route::any('/caijiphoto','frontend\CaijiController@caijiphoto');
//    Route::any('/randromcover','frontend\CaijiController@randromcover');


    //计划任务
    Route::get('/plan/plantask','frontend\PlanController@plantask');

    //---------------------后台------------------------
    Route::any('/backend/login','backend\LoginController@login');
    Route::get('/backend/code','backend\LoginController@code');

});


//---------------------后台------------------------------------------------
Route::group(['middleware' => ['web','admin.login']],function () {
    Route::get('/backend/index','backend\IndexController@index');
    Route::post('/backend/logout','backend\IndexController@logout');
    Route::post('/backend/changepwd','backend\IndexController@changepwd');

    Route::any('/backend/adminlist','backend\AdminController@adminList');
    Route::any('/backend/admin/changestatus','backend\AdminController@changestatus');
    Route::delete('/backend/admin/delete/{admin_id}','backend\AdminController@delete')->where(['admin_id' => '[0-9]+']);
    Route::post('/backend/admin/add','backend\AdminController@adminadd');

    //地区
    Route::any('/backend/area/list','backend\AreaController@arealist');
    Route::any('/backend/area/areaedit/{id}','backend\AreaController@areaedit')->where(['id' => '[0-9]+']);
    Route::any('/backend/area/areaadd','backend\AreaController@areaadd');
    Route::delete('/backend/area/delete/{id}','backend\AreaController@delete')->where(['id' => '[0-9]+']);

    //妹子管理
    Route::any('/backend/girls/girllist','backend\GirlsController@girllist');
    Route::any('/backend/girls/girladd','backend\GirlsController@girladd');
    Route::any('/backend/girls/girledit/{id}','backend\GirlsController@girledit')->where(['id' => '[0-9]+']);
    Route::delete('/backend/girls/delete/{id}','backend\GirlsController@delete')->where(['id' => '[0-9]+']);
    Route::any('/backend/girls/girlphotolist/{id}','backend\GirlsController@girlphotolist')->where(['id' => '[0-9]+']);
    Route::delete('/backend/girls/girlphotodelete/{id}','backend\GirlsController@girlphotodelete')->where(['id' => '[0-9]+']);
    Route::any('/backend/girls/girlphotoadd/{id}','backend\GirlsController@girlphotoadd')->where(['id' => '[0-9]+']);

    Route::any('/backend/girls/webuploader/{id}','backend\GirlsController@webuploader')->where(['id' => '[0-9]+']);

    //评论管理
    Route::any('/backend/comments/lists','backend\CommentController@lists');
    Route::any('/backend/comments/batchsend/{status}','backend\CommentController@batchsend')->where(['status' => '[0-9]+']);


    //用户管理
    Route::any('/backend/member/lists','backend\MemberController@lists');
    Route::any('/backend/member/edit/{id}','backend\MemberController@edit')->where(['id' => '[0-9]+']);

    //设置常用属性
    Route::get('/backend/attributelist','backend\IndexController@attributelist');
    Route::any('/backend/addstatic','backend\IndexController@addstatic');
    Route::any('/backend/editstatic/{id}','backend\IndexController@editstatic')->where(['id' => '[0-9]+']);
    Route::delete('/backend/delstatic/{id}','backend\IndexController@delstatic')->where(['id' => '[0-9]+']);

    //图片上传
    Route::any('/backend/uploadphoto/{id}','MyController@uploadphoto');
});



