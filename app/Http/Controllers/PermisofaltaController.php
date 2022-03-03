<?php

namespace App\Http\Controllers;

use App\Permisofalta;
use App\Trabajador;
use App\User;
use Illuminate\Http\Request;

class PermisofaltaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $permisofaltas=Permisofalta::all();
        $trabajadors=Trabajador::all();
        $users=User::all();
        $permisofaltas=Permisofalta::paginate(100);
        return view('permisofaltas.index', compact('permisofaltas','trabajadors','users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
        $trabajador=Trabajador::all();
        $user=User::all();
        return view('permisofaltas.create',compact('trabajador','user'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $permisofalta=Permisofalta::create($request->all());
        return redirect()->route('permisofaltas.index',$permisofalta->id)
        ->with('info','trabajador  Guardado con exito!!.');
    
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Permisofalta  $permisofalta
     * @return \Illuminate\Http\Response
     */
    public function show(Permisofalta $permisofalta)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Permisofalta  $permisofalta
     * @return \Illuminate\Http\Response
     */
    public function edit(Permisofalta $permisofalta)
    {
        $trabajador=Trabajador::all();
        $user=User::all();
        return view('permisofaltas.edit', compact('permisofalta','trabajador','user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Permisofalta  $permisofalta
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Permisofalta $permisofalta)
    {
        $permisofalta->update($request->all());
        return redirect()->route('permisofaltas.index', $permisofalta->id)
        ->with('info','Registro trabajador Actualizado con exito!!.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Permisofalta  $permisofalta
     * @return \Illuminate\Http\Response
     */
    public function destroy(Permisofalta $permisofalta)
    {
        $permisofalta->delete();
        return back()->with('info','eliminado correctamente');
    }
}
