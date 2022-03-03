<?php

namespace App\Http\Controllers;

use App\Trabajador;
use App\Proyecto;
use App\User;
use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TrabajadorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $trabajadors=Trabajador::all();
        $proyectos=Proyecto::all();
        $users=User::all();
        $trabajadors=Trabajador::paginate(500);
        return view('trabajadors.index', compact('trabajadors','proyectos','users')); 
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $proyecto=Proyecto::all();
        $user=User::all();
        return view('trabajadors.create',compact('proyecto','user'));
       
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       
        $trabajador=Trabajador::create($request->all());
        DB::table('coordenadas')->insert([
            'idcampo' => $trabajador->id,
            'geoloc' =>  '-16.5322094, -68.2074774',
            'tipo' => 'trabajador',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        ]);  
        return redirect()->route('trabajadors.index',$trabajador->id)
        ->with('info','trabajador  Guardado con exito!!.');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Trabajador  $trabajador
     * @return \Illuminate\Http\Response
     */
    public function show(Trabajador $trabajador)
    {
        //
    }
    
    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Trabajador  $trabajador
     * @return \Illuminate\Http\Response
     */
    public function edit(Trabajador $trabajador)
    {
        $proyecto=Proyecto::all();
        $user=User::all();
        return view('trabajadors.edit',compact('trabajador','proyecto','user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Trabajador  $trabajador
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Trabajador $trabajador)
    {
        
        $trabajador->update($request->all());
        return redirect()->route('trabajadors.index', $trabajador->id)
        ->with('info','Registro trabajador Actualizado con exito!!.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Trabajador  $trabajador
     * @return \Illuminate\Http\Response
     */
    public function destroy(Trabajador $trabajador)
    {
        $trabajador->delete();
        return back()->with('info','eliminado correctamente');
    }
    public function generaPDF(Trabajador $trabajador)
    {
        
        $trabajador=Trabajador::all();
        
        
        /* return response()->json($ids); */
       $pdf = PDF::loadView('trabajadors.pdf', compact('trabajador'))->setPaper('A4', 'portrait'); 

       return $pdf->stream('trabajadors.pdf');
    }
}
