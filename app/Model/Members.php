<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Members extends Model
{
    protected $table = 'members';
    protected $primaryKey = 'id';
    //public $timestamps = '';

    protected $fillable = ['parent_id','pwd','username','phone','mail','coin','status','last_login_ip','last_login_time','register_ip'];
}
