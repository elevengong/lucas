<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Caiji extends Model
{
    protected $table = 'caijilist';
    protected $primaryKey = 'id';
    public $timestamps = '';

    protected $fillable = ['url','status','cid'];
}
