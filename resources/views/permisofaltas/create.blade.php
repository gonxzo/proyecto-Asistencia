@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    Permisos y Faltas
                </div>
                <div class="card-body">

                    {!! Form::open(['route'=>'permisofaltas.store']) !!}

                    @include('permisofaltas.partials.form')
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
