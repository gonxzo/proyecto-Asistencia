<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class coordenadas extends Model
{
    protected $primaryKey = 'id';
    protected $fillable = [
        'id','idcampo','geoloc','tipo','created_at','updated_at',
    ];
}
