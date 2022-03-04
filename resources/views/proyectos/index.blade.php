@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">

            <div class="col-md-10">
                <div class="card">
                    <div class="card-header">
                        PROYECTOS
                    </div>
                    <div class="card-body">
                        @can('proyectos.create')
                            <a href="{{ route('proyectos.create') }}" class="btn btn-sm btn-primary mb-1">Nuevo Proyecto</a>
                        @endcan
                        <br>
                        <div class="table-responsive">
                            <table id="usuario" class="table table-bordered table-sm" style="width:100%">
                                <thead>
                                    <tr>
                                        <th scope="col">Proyecto</th>
                                        <th scope="col">Tipo</th>
                                        <th scope="col">Direccion</th>
                                        <th scope="col">Inicia</th>
                                        <th scope="col">Finaliza</th>
                                        @can('proyectos.show')
                                            <th scope="col">Mostrar</th>
                                        @endcan
                                        @can('proyectos.edit')
                                            <th scope="col">Editar</th>
                                        @endcan
                                        @can('proyectos.destroy')
                                            <th scope="col">Eliminar</th>
                                        @endcan

                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($proyectos as $item)
                                        <tr>

                                            <td>{{ $item->nombre }} </td>
                                            <td>{{ $item->tipo }} </td>
                                            <td>{{ $item->localidad }} </td>
                                            <td>{{ $item->fechai }} </td>
                                            <td>{{ $item->fechaf }} </td>
                                            <td width=10px>
                                                @can('proyectos.show')
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
                                                                    <p><strong>Nombre del
                                                                            Proyecto:</strong>{{ $item->nombre }} </p>
                                                                    <p><strong>Tipo de Construccion:</strong>{{ $item->tipo }}
                                                                    </p>
                                                                    <p><strong>Direccion:</strong>{{ $item->localidad }} </p>
                                                                    <p><strong>Construccion en el
                                                                            Area:</strong>{{ $item->superficieutil }} </p>
                                                                    <p><strong>Descripcion:</strong>{{ $item->descripcion }}
                                                                    </p>
                                                                    <p><strong>Fecha Inicio del Proyecto: </strong>
                                                                        {{ $item->fechai }}</p>
                                                                    <p><strong>Fecha Final del Proyecto: </strong>
                                                                        {{ $item->fechaf }}</p>
                                                                    <p><strong>Fecha Entrega del Proyecto: </strong>
                                                                        {{ $item->fechae }}</p>
                                                                    <p><strong>Ubicacion Geografica:
                                                                        </strong>{{ $item->latlon }}</p>
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
                                                @can('proyectos.edit')
                                                    <a href="{{ route('proyectos.edit', $item->id) }}"
                                                        class="btn btn-sm btn-info">Editar</a>
                                                @endcan
                                            </td>
                                            <td width=10px>
                                                @can('proyectos.destroy')
                                                    {!! Form::open(['route' => ['proyectos.destroy', $item->id], 'onclick' => "return confirm('Esta Seguro de Eliminar este Registro')", 'method' => 'DELETE']) !!}
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
