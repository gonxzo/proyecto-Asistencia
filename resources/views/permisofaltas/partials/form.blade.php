<div class="form-row">
  <div class="form-group col-md-12">
    <strong> {!! Form::label('idusuario','Nombre de Trabajador') !!}</strong>
    <select class="form-control" name="idusuario" id="idusuario">
      @foreach($trabajador as $trab)
          <option value="{{$trab['id']}}">{{$trab['nombre']}} {{$trab['apellidos']}} 
          </option>
      @endforeach
    </select>
  </div>
</div>
<div class="form-row">
  <div class="form-group col-md-12">
    <strong> {!! Form::label('tipo','Motivo de No Asistencia') !!}</strong>
    <select class="form-control" name="tipo" id="tipo">
       <option>FALTA</option>
        <option>PERMISO</option>
    </select>
  </div>
</div>
<div class="form-row">
  <div class="form-group col-md-12">
    {!! Form::label('observacion','Observacion') !!}
    {!! Form::textArea('observacion', null, ['class'=> 'form-control', 'rows'=>'5']) !!}
  </div>
</div>
 
  <div class="form-group">
  {!! Form::submit('Guardar', ['class'=>'btn btn-sm btn-primary']) !!}
  <a href="{{route('permisofaltas.index')}}"  class="btn btn-sm btn-primary">Volver</a>
  </div>
 