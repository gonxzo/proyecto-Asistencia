@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    Poryectos
                </div>
                <div class="card-body">

                    {!! Form::model($permisofalta, ['route'=>['permisofaltas.update',$permisofalta->id],'method'=>'PUT' ]) !!}
                    @include('permisofaltas.partials.form')
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
