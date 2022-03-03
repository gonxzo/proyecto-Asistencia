<div class="form-group">
    <div class="form-row">
        <div class="form-group col-md-12">
            <strong> {!! Form::label('idusuario', 'Nombres') !!}</strong>
            <select class="form-control" name="idusuario" id="idusuario">
                @foreach ($user as $usuario)
                    <option value="{{ $usuario['id'] }}">{{ $usuario['name'] }}</option>
                @endforeach
            </select>
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-12">
            <strong> {!! Form::label('proyectoid', 'Proyecto a Cargo') !!}</strong>
            <select class="form-control" name="proyectoid" id="proyectoid">
                @foreach ($proyecto as $proy)
                    <option value="{{ $proy['id'] }}">{{ $proy['nombre'] }}</option>
                @endforeach
            </select>
        </div>

    </div>
    <div class="form-row">
        <div class="form-group col-md-12">
            <strong> {!! Form::label('cargo', 'Cargo en la Empresa') !!}</strong>
            <select class="form-control" name="cargo" id="cargo">
                <option>GERENTE</option>
                <option>JEFE DE PERSONAL</option>
                <option>SUPERVISOR</option>
                <option>OBRERO</option>
                <option>AYUDANTE</option>
            </select>
        </div>

    </div>

    <div class="form-group">
        {!! Form::submit('Guardar', ['class' => 'btn btn-sm btn-primary']) !!}
        <a href="{{ route('trabajadors.index') }}" class="btn btn-sm btn-primary">Volver</a>
    </div>
</div>
