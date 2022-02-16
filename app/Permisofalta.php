<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Permisofalta extends Model
{
    protected $primaryKey = 'id';
    protected $fillable = [
        'id','idusuario','tipo','observacion','created_at','updated_at',
    ];
}
