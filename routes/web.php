<?php

use App\Municipio;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});


Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');


//Routes
Route::middleware(['auth'])->group(function () {
    Route::post('roles/store', 'RoleController@store')->name('roles.store')->middleware('can:roles.store');
    Route::get('roles', 'RoleController@index')->name('roles.index')->middleware('can:roles.index');
    Route::get('roles/create', 'RoleController@create')->name('roles.create')->middleware('can:roles.create');
    Route::put('roles/{role}', 'RoleController@update')->name('roles.update')->middleware('can:roles.edit');
    Route::get('roles/{role}', 'RoleController@show')->name('roles.show')->middleware('can:roles.show');
    Route::delete('roles/{role}', 'RoleController@destroy')->name('roles.destroy')->middleware('can:roles.destroy');
    Route::get('roles/{role}/edit', 'RoleController@edit')->name('roles.edit')->middleware('can:roles.edit');

    //Usuarios
    Route::get('users', 'UserController@index')->name('users.index')->middleware('can:users.index');
    Route::put('users/{user}', 'UserController@update')->name('users.update')->middleware('can:users.edit');
    Route::get('users/{user}', 'UserController@show')->name('users.show')->middleware('can:users.show');
    Route::delete('users/{user}', 'UserController@destroy')->name('users.destroy')->middleware('can:users.destroy');
    Route::get('users/{user}/edit', 'UserController@edit')->name('users.edit')->middleware('can:users.edit');
    Route::get('users.buscar', 'UserController@buscar')->name('users');


    //PROYECTOS
    Route::post('proyectos/store', 'ProyectoController@store')->name('proyectos.store')->middleware('can:proyectos.store');
    Route::get('proyectos', 'ProyectoController@index')->name('proyectos.index')->middleware('can:proyectos.index');
    Route::get('proyectos/create', 'ProyectoController@create')->name('proyectos.create')->middleware('can:proyectos.create');
    Route::put('proyectos/{proyecto}', 'ProyectoController@update')->name('proyectos.update')->middleware('can:proyectos.edit');
    Route::get('proyectos/{proyecto}', 'ProyectoController@show')->name('proyectos.show')->middleware('can:proyectos.show');
    Route::delete('proyectos/{proyecto}', 'ProyectoController@destroy')->name('proyectos.destroy')->middleware('can:proyectos.destroy');
    Route::get('proyectos/{proyecto}/edit', 'ProyectoController@edit')->name('proyectos.edit')->middleware('can:proyectos.edit');
    Route::get('proyectos/{proyecto}', 'ProyectoController@edit')->name('proyectos.imagenes')->middleware('can:proyectos.imagenes');

        //PERMISO FALTA
        Route::post('permisofaltas/store', 'PermisofaltaController@store')->name('permisofaltas.store')->middleware('can:permisofaltas.store');
        Route::get('permisofaltas', 'PermisofaltaController@index')->name('permisofaltas.index')->middleware('can:permisofaltas.index');
        Route::get('permisofaltas/create', 'PermisofaltaController@create')->name('permisofaltas.create')->middleware('can:permisofaltas.create');
        Route::put('permisofaltas/{permisofalta}', 'PermisofaltaController@update')->name('permisofaltas.update')->middleware('can:permisofaltas.edit');
        Route::get('permisofaltas/{permisofalta}', 'PermisofaltaController@show')->name('permisofaltas.show')->middleware('can:permisofaltas.show');
        Route::delete('permisofaltas/{permisofalta}', 'PermisofaltaController@destroy')->name('permisofaltas.destroy')->middleware('can:permisofaltas.destroy');
        Route::get('permisofaltas/{permisofalta}/edit', 'PermisofaltaController@edit')->name('permisofaltas.edit')->middleware('can:permisofaltas.edit');
    
     //TRABAJADORES
     Route::post('trabajadors/store', 'TrabajadorController@store')->name('trabajadors.store')->middleware('can:trabajadors.store');
     Route::get('trabajadors', 'TrabajadorController@index')->name('trabajadors.index')->middleware('can:trabajadors.index');
     Route::get('trabajadors/create', 'TrabajadorController@create')->name('trabajadors.create')->middleware('can:trabajadors.create');
     Route::put('trabajadors/{trabajador}', 'TrabajadorController@update')->name('trabajadors.update')->middleware('can:trabajadors.edit');
     Route::get('trabajadors/{trabajador}', 'TrabajadorController@show')->name('trabajadors.show')->middleware('can:trabajadors.show');
     Route::delete('trabajadors/{trabajador}', 'TrabajadorController@destroy')->name('trabajadors.destroy')->middleware('can:trabajadors.destroy');
     Route::get('trabajadors/{trabajador}/edit', 'TrabajadorController@edit')->name('trabajadors.edit')->middleware('can:trabajadors.edit');
     Route::get('trabajadors-Entrada', 'TrabajadorController@entradas')->name('trabajadors.entradas')->middleware('can:trabajadors.entradas');
     Route::get('trabajadors/{trabajador}/reporte', 'TrabajadorController@generaPDF')->name('trabajadors.pdf')->middleware('can:trabajadors.pdf');
     //coordenadas
     Route::get('coordenadas', 'CoordenadasController@index')->name('coordenadas.index')->middleware('can:coordenadas.index');
    //CLEAR
    Route::get('storage-link',function(){
        return Artisan::call('storage:link');
    });
    Route::get('/clear', function() {
        Artisan::call('view:clear');
        Artisan::call('route:clear');
        Artisan::call('config:clear');
        Artisan::call('cache:clear');
        Artisan::call('config:cache');
    });
});
