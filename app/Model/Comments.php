<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Comments extends Model
{
    protected $table = 'comments';
    protected $primaryKey = 'id';
    //public $timestamps = '';

    protected $fillable = ['parent_id','g_id','nickname','content','hidden_content','status',];
}
