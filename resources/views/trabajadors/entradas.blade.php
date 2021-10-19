@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    Personal
                </div>
                <div class="card-body">
                    @foreach ($trabajadors as $trabajador )
                        @if ($trabajador->id == Auth::user()->id )
                        <p><strong>Nombre :</strong> {{$trabajador->nombre}} {{$trabajador->apellidos}}</p>
                            @foreach ($proyectos as $proyecto )
                                @if ($trabajador->proyectoid == $proyecto->id)
                                <p><strong>Proyecto :</strong> {{$proyecto->nombre}}</p>
                                <p><strong>Coordenadas Proyecto :</strong> {{$proyecto->latlon}}</p> 
                                @endif                        
                             @endforeach
                        @endif                        
                    @endforeach
                    <p><strong>Coordenada Actual :</strong><input type="text" name="LatLong" class="form-control" id="textmap" value="geolocation">
                        <div class="form-group">
                            {!! Form::submit('Marcar Entrada', ['class' => 'btn btn-default']) !!}
                        </div>            
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
