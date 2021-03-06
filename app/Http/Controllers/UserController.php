<?php

namespace App\Http\Controllers;
use App\User;

use Illuminate\Http\Request;
use Caffeinated\Shinobi\Models\Role;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users=User::all();
        $users=User::paginate(100);
       
        return view('users.index', compact('users'));
    }
    /**
     * Display the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return view('users.show',compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        $roles=Role::get();
        return view('users.edit',compact('user','roles'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\User  $User
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $request->validate([
            'name'=>'required|max:200',
            'email'=>'required|max:200',
        ]);
        //actualizar el usuario
        $user->update($request->all());

        //actualizar roles
        $user->roles()->sync($request->get('roles'));
         
        return redirect()->route('users.index')->with('info','Usuario Actualizado con exito!!.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $user->delete();
        return back()->with('info','eliminado correctamente');
    }
    public function buscador(Request  $request)
    {
        $users = User::where("name",'like', $request->texto."%")->take(10)->get();
        return view('users.index', compact("users"));
    }

    public function buscar(Request $request)
    {
    	$name  = $request->get('name');

    	$users = User::orderBy('id', 'DESC')
    		->name($name)
    		->paginate(10);

    	return view('users.index', compact('users'));
    }


}
