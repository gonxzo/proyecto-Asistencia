<div class="form-row">
  <div class="form-group col-md-4">
      <strong> {!! Form::label('fechai', 'Inicio de la Obra') !!}</strong>
      {!! Form::date('fechai', null, ['class' => 'form-control', 'onKeyUp' => 'this.value=this.value.toUpperCase();']) !!}
  </div>
  <div class="form-group col-md-4">
      <strong> {!! Form::label('fechaf', 'Fin de Obra') !!}</strong>
      {!! Form::date('fechaf', null, ['class' => 'form-control', 'onKeyUp' => 'this.value=this.value.toUpperCase();']) !!}
  </div>
  <div class="form-group col-md-4">
      <strong> {!! Form::label('fechae', 'Fecha de Entrega') !!}</strong>
      {!! Form::date('fechae', null, ['class' => 'form-control', 'onKeyUp' => 'this.value=this.value.toUpperCase();']) !!}
  </div>
</div>
  <div class="form-row">
      <div class="form-group col-md-6">
          <strong> {!! Form::label('nombre', 'Nombre del Proyecto') !!}</strong>
          {!! Form::text('nombre', null, ['class' => 'form-control', 'onKeyUp' => 'this.value=this.value.toUpperCase();']) !!}
      </div>
      <div class="form-group col-md-6">
          <strong> {!! Form::label('tipo', 'Tipo de Proyecto') !!}</strong>
          <select class="form-control" name="tipo" id="tipo">
              <option>CONSTRUCCIÓN NUEVA</option>
              <option>RENOVACIÓN</option>
          </select>
      </div>
  </div>

  <div class="form-row">
      <div class="form-group col-md-12">
          <strong> {!! Form::label('localidad', 'Direccion') !!}</strong>
          {!! Form::text('localidad', null, ['class' => 'form-control', 'onKeyUp' => 'this.value=this.value.toUpperCase();']) !!}

      </div>
  </div>
  <div class="form-row">
      <div class="form-group col-md-12">
          <strong> {!! Form::label('superficieutil', 'Areas a Construir') !!}</strong>
          {!! Form::text('superficieutil', null, ['class' => 'form-control', 'onKeyUp' => 'this.value=this.value.toUpperCase();']) !!}

      </div>
  </div>
  <div class="form-row">
      <div class="form-group col-md-12">
          <strong> {!! Form::label('descripcion', 'Descripcion de la Obra') !!}</strong>
          {!! Form::text('descripcion', null, ['class' => 'form-control', 'onKeyUp' => 'this.value=this.value.toUpperCase();']) !!}
      </div>
  </div>

  <div class="form-row">
      <div class="form-group col-md-12">
          <strong> {!! Form::label('latlon', 'Ubicacion Geografica') !!}</strong>
          {!! Form::text('latlon', null, ['class' => 'form-control', 'onKeyUp' => 'this.value=this.value.toUpperCase();']) !!}
      </div>
  </div>

  <div class="form-group">
      {!! Form::submit('Guardar', ['class' => 'btn btn-sm btn-primary']) !!}
      <a href="{{ route('proyectos.index') }}" class="btn btn-sm btn-primary">Volver</a>
  </div>
