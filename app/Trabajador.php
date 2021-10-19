<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Trabajador extends Model
{
    protected $primaryKey = 'id';
    protected $fillable = [
        'id','nombre','apellidos','edad','direccion','cargo','proyectoid','locallatlon',
    ];
}
