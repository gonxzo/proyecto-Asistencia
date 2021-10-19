<?php

namespace App\Http\Controllers;

use App\coordenadas;
use Illuminate\Http\Request;

class CoordenadasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('coordenadas.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\coordenadas  $coordenadas
     * @return \Illuminate\Http\Response
     */
    public function show(coordenadas $coordenadas)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\coordenadas  $coordenadas
     * @return \Illuminate\Http\Response
     */
    public function edit(coordenadas $coordenadas)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\coordenadas  $coordenadas
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, coordenadas $coordenadas)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\coordenadas  $coordenadas
     * @return \Illuminate\Http\Response
     */
    public function destroy(coordenadas $coordenadas)
    {
        //
    }
}
