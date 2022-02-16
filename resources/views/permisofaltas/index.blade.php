@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">

            <div class="col-md-10">
                <div class="card">
                    <div class="card-header">
                        PERMISO Y FALTAS
                    </div>
                    <div class="card-body">
                        @can('permisofaltas.create')
                            <a href="{{ route('permisofaltas.create') }}" class="btn btn-sm btn-primary mb-1">Nuevo Registro</a>
                        @endcan
                        <br>
                        <div class="table-responsive">
                            <table id="usuario" class="table table-bordered table-sm" style="width:100%">
                                <thead>
                                    <tr>
                                        <th scope="col">Personal</th>
                                        <th scope="col">Ausencia</th>
                                        <th scope="col">Observacion</th>
                                        <th scope="col">Mostrar</th>
                                        <th scope="col">Editar</th>
                                        <th scope="col">Eliminar</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($permisofaltas as $item)
                                        <tr>
                                            @foreach ($trabajadors as $personal )
                                                @if ($personal->id == $item->idusuario)
                                                <td>{{ $personal->nombre }} {{ $personal->apellidos }} </td>
                                                @endif    
                                            @endforeach   
                                            <td>{{ $item->tipo }} </td>
                                            <td>{{ $item->observacion }} </td>
                                            <td width=10px>
                                                @can('permisofaltas.show')
                                                    <button type="button" class="btn btn-sm btn-success" data-toggle="modal"
                                                        data-target="#modal{{ $item->id }}">
                                                        Visualizar
                                                    </button>
                                                    <div class="modal fade" id="modal{{ $item->id }}" tabindex="-1"
                                                        role="dialog" aria-labelledby="exampleModalCenterTitle"
                                                        aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="exampleModalLongTitle">
                                                                        DESCRIPCION DEL PROYECTO</h5>
                                                                </div>
                                                                <div class="modal-body">
                                                                    @foreach ($trabajadors as $personal )
                                                                        @if ($personal->id == $item->idusuario)
                                                                        <p><strong>Nombre del Trabajador:</strong>{{ $personal->nombre }} {{ $personal->apellidos }}</p>
                                                                        <p><strong>Edad del Trabajador:</strong>{{ $personal->edad }} </p>
                                                                        <p><strong>Cargo:</strong>{{ $personal->cargo }} </p>
                                                                        <p><strong>Direccion:</strong>{{ $personal->direccion }}</p>
                                                                        @endif    
                                                                    @endforeach  
                                                                    <p><strong>Tipo de Ausencia: </strong> {{ $item->tipo }}</p>
                                                                    <p><strong>Observacion: </strong> {{ $item->observacion }}</p>
                                                                    
                                                                    <div class="modal-footer">
                                                                        <button type="button" class="btn btn-secondary"
                                                                            data-dismiss="modal">Cerrar</button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endcan
                                            </td>
                                            <td width=10px>
                                                @can('permisofaltas.edit')
                                                    <a href="{{ route('permisofaltas.edit', $item->id) }}"
                                                        class="btn btn-sm btn-info">Editar</a>
                                                @endcan
                                            </td>
                                            <td width=10px>
                                                @can('permisofaltas.destroy')
                                                    {!! Form::open(['route' => ['permisofaltas.destroy', $item->id], 'onclick' => "return confirm('Esta Seguro de Eliminar este Registro')", 'method' => 'DELETE']) !!}
                                                    <button class="btn btn-sm btn-danger">Eliminar</button>
                                                    {!! Form::close() !!}
                                                @endcan
                                            </td>

                                        </tr>
                                    @endforeach
                                    </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
