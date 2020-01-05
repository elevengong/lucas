<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Area extends Model
{
    protected $table = 'area';
    protected $primaryKey = 'id';
    public $timestamps = '';

    protected $fillable = ['area_name','priority'];
}