<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Girls extends Model
{
    protected $table = 'girls';
    protected $primaryKey = 'id';
    //public $timestamps = '';

    protected $fillable = ['title','cover','name','age','height','boobs','weight','room','area','area_id','price','overnight','mobile','wechat','service','videolist','note','views','massage','threesome','show','expire_date'];
}
