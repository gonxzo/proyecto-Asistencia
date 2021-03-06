<?php

namespace App\Http\Controllers;

use App\Proyecto;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class ProyectoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
      /*   $fechaini = $request->get('fechaini');
        $fechafin = $request->get('fechafin'); */
      /*  dd($request->get('fechaini'));
       dd($request->get('fechafin')); */
        $fechaini = '2022-02-02';
        $fechafin = '2022-03-31';
         $datos['proyectos'] = DB::table('proyectos')
     /*    ->where('created_at', '>=','%'.$fechaini.'%')
        ->where('created_at', '<=','%'.$fechafin.'%') */
        ->select('proyectos.*')
        ->paginate(100);
        return view('proyectos.index',$datos);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('proyectos.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $proyecto=Proyecto::create($request->all());
        DB::table('coordenadas')->insert([
            'idcampo' => $proyecto->id,
            'geoloc' =>  $request->latlon,
            'tipo' => 'proyecto',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);  
        return redirect()->route('proyectos.index',$proyecto->id)
        ->with('info','proyecto  Guardado con exito!!.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Proyecto  $proyecto
     * @return \Illuminate\Http\Response
     */
    public function show(Proyecto $proyecto)
    {
        return view('proyectos.show',compact('proyecto'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Proyecto  $proyecto
     * @return \Illuminate\Http\Response
     */
    public function edit(Proyecto $proyecto)
    {
        return view('proyectos.edit',compact('proyecto'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Proyecto  $proyecto
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Proyecto $proyecto)
    {
        $proyecto->update($request->all());
        return redirect()->route('proyectos.index', $proyecto->id)
        ->with('info','Registro laminas Actualizado con exito!!.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Proyecto  $proyecto
     * @return \Illuminate\Http\Response
     */
    public function destroy(Proyecto $proyecto)
    {
        $proyecto->delete();
        return back()->with('info','eliminado correctamente');
    }
}
