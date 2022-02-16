@extends('layouts.app')

@section('content')


<div class="login-reg-panel">
    <form method="POST" action="{{ route('login') }}" >
        @csrf
    <div class="login-info-box">
        <h2>Tienes Una Cuenta?</h2>
        <p>Empresa Constructora Peña Andrade</p>
        <label id="label-register" for="log-reg-show">Ingresar</label>
        <input type="radio" name="active-log-panel" id="log-reg-show"  checked="checked">
    </div>
                        
    <div class="register-info-box">
        <h2>No tienes una Cuenta?</h2>
        <p>Empresa Constructora Peña Andrade</p>
        <label id="label-login" for="log-login-show">Registrarse</label>
        <input type="radio" name="active-log-panel" id="log-login-show">
    </div>
                        
    <div class="white-panel">
        <div class="login-show">
            <h2>INGRESAR</h2>
            <input id="email" type="text" class="input" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="Correo Electronico" autofocus>
            <input id="password" type="password" class="input" name="password" required autocomplete="current-password" placeholder="Contraseña">
            <input type="submit" class="button" value="Ingresar">
            <a href="">Olvidaste Tu Contraseña?</a>
        </div>
    </form>
    <form method="POST" action="{{ route('register') }}">
        @csrf
        <div class="register-show">
            <h2>REGISTRARSE</h2>
            <input id="name" type="text" class="input @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus placeholder="Nombre">
            <input id="email" type="text" class="input @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" placeholder="Correo Electronico">
            <input id="telefono" type="text" class="input @error('telefono') is-invalid @enderror" name="telefono" value="{{ old('telefono') }}" required autocomplete="telefono" autofocus placeholder="Telefono">
            <input id="direccion" type="text" class="input @error('direccion') is-invalid @enderror" name="direccion" value="{{ old('direccion') }}" required autocomplete="direccion" autofocus placeholder="Direccion">
            <input id="password" type="password" class="input @error('password') is-invalid @enderror" name="password" required autocomplete="new-password" placeholder="Contraseña">
            <input id="password-confirm" type="password" class="input" name="password_confirmation" required autocomplete="new-password" placeholder="Confirma Contraseña">
            <input type="submit" class="button" value="REGISTRAR">
        </div>
    </form>
    </div>
</div>
@endsection


