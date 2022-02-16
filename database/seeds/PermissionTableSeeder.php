<?php

use Illuminate\Database\Seeder;
use Caffeinated\Shinobi\Models\Permission;
class PermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
     //usuarios
        Permission::create([
            'name'=>'USUARIO',
            'slug'=>'users.index',
            'description'=>'NAVEGA LA TABLA USUARIOS',
        ]);
        Permission::create([
            'name'=>'USUARIO',
            'slug'=>'users.show',
            'description'=>'VISUALIZA A UN USUARIO EN ESPECIFICO',
        ]);
        Permission::create([
            'name'=>'USUARIO',
            'slug'=>'users.edit',
            'description'=>'EDITA A UN USUARIO EN ESPECIFICO',
        ]);
        Permission::create([
            'name'=>'USUARIO',
            'slug'=>'users.destroy',
            'description'=>'ELIMINA UN USUARIO EN ESPECIFICO',
        ]);

        //roles
        Permission::create([
            'name'=>'ROLES',
            'slug'=>'roles.index',
            'description'=>'NAVEGA LA TABLA USUARIOS',
        ]);
        Permission::create([
            'name'=>'ROLES',
            'slug'=>'roles.show',
            'description'=>'VISUALIZA A UN ROL EN ESPECIFICO',
        ]);
        Permission::create([
            'name'=>'ROLES',
            'slug'=>'roles.create',
            'description'=>'CREA UN NUEVO ROL EN EL SISTEMA',
        ]);
        Permission::create([
            'name'=>'ROLES',
            'slug'=>'roles.edit',
            'description'=>'EDITA UN ROL EN ESPECIFICO',
        ]);
        Permission::create([
            'name'=>'ROLES',
            'slug'=>'roles.destroy',
            'description'=>'ELIMINA UN ROL EN ESPECIFICO',
        ]);

        //DOCUMENTOS
        Permission::create([
            'name'=>'DOCUMENTO',
            'slug'=>'documentos.index',
            'description'=>'NAVEGA LA TABLA DOCUMENTO',
        ]);
        Permission::create([
            'name'=>'DOCUMENTO',
            'slug'=>'documentos.show',
            'description'=>'VISUALIZA A UN DOCUMENTO EN ESPECIFICO',
        ]);
        Permission::create([
            'name'=>'DOCUMENTO',
            'slug'=>'documentos.create',
            'description'=>'CREA UN NUEVO DOCUMENTO EN EL SISTEMA',
        ]);
        Permission::create([
            'name'=>'DOCUMENTO',
            'slug'=>'documentos.edit',
            'description'=>'EDITA UN DOCUMENTO EN ESPECIFICO',
        ]);
        Permission::create([
            'name'=>'DOCUMENTO',
            'slug'=>'documentos.destroy',
            'description'=>'ELIMINA UN DOCUMENTO EN ESPECIFICO',
        ]);
         //trabajadores
         Permission::create([
            'name'=>'PERSONAL',
            'slug'=>'trabajadors.index',
            'description'=>'NAVEGA LA TABLA PERSONAL',
        ]);
        Permission::create([
            'name'=>'PERSONAL',
            'slug'=>'trabajadors.show',
            'description'=>'VISUALIZA A UN REGISTRO DE PERSONAL EN ESPECIFICO',
        ]);
        Permission::create([
            'name'=>'PERSONAL',
            'slug'=>'trabajadors.create',
            'description'=>'CREA UN NUEVO REGISTRO DE PERSONAL EN EL SISTEMA',
        ]);
        Permission::create([
            'name'=>'PERSONAL',
            'slug'=>'trabajadors.edit',
            'description'=>'EDITA UN REGISTRO DE PERSONAL EN ESPECIFICO',
        ]);
        Permission::create([
            'name'=>'PERSONAL',
            'slug'=>'trabajadors.destroy',
            'description'=>'ELIMINA UN REGISTRO DE PERSONAL EN ESPECIFICO',
        ]);
         //PROYECTOS
         Permission::create([
            'name'=>'PROYECTO',
            'slug'=>'proyectos.index',
            'description'=>'NAVEGA LA TABLA PROYECTOS',
        ]);
        Permission::create([
            'name'=>'PROYECTO',
            'slug'=>'proyectos.show',
            'description'=>'VISUALIZA A UN REGISTRO DE PROYECTO EN ESPECIFICO',
        ]);
        Permission::create([
            'name'=>'PROYECTO',
            'slug'=>'proyectos.create',
            'description'=>'CREA UN NUEVO REGISTRO DE PROYECTO EN EL SISTEMA',
        ]);
        Permission::create([
            'name'=>'PROYECTO',
            'slug'=>'proyectos.edit',
            'description'=>'EDITA UN REGISTRO DE PROYECTO EN ESPECIFICO',
        ]);
        Permission::create([
            'name'=>'PROYECTO',
            'slug'=>'proyectos.destroy',
            'description'=>'ELIMINA UN REGISTRO DE PROYECTO EN ESPECIFICO',
        ]);

        //COORDENADAS

        Permission::create([
            'name'=>'VISOR MAPA',
            'slug'=>'coordenadas.index',
            'description'=>'SE MUESTRA EL VISOR DEL MAPA',
        ]);

        
    }
}
