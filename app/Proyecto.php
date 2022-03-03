<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Proyecto extends Model
{
    protected $primaryKey = 'id';
    protected $fillable = [
        'id','nombre','localidad','tipo','superficieutil','descripcion','fechai','fechaf','fechae','latlon','created_at','updated_at',
    ];
}
