<!DOCTYPE html>
<html lang="en">

<head>
    <style>
        @page {
            margin: 0cm 0cm;
            font-family: Arial;

        }

        body {
            margin-top: 0.5cm;
            margin-left: 1cm;
            margin-right: 1cm;
            margin-bottom: 0.5cm;
            background-color: #ffffff;
            padding: 50px;
        }

        header {
            position: fixed;
            top: 1cm;
            left: 6.5cm;
            right: 0cm;
            height: 0.5cm;
            background-color: black;
            color: black;
            text-align: center;
            line-height: 0px;
            padding: 20px;
            margin: 8px;
            border: 0px solid black;
            float: Inherit;
            width: 270px;

        }



        footer {
            position: fixed;
            bottom: 0cm;
            left: 0cm;
            right: 0cm;
            height: 1cm;
            background-color: rgb(12, 36, 104);
            color: white;
            text-align: center;
            line-height: 35px;
        }

    </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>TABLA DE PRODUCTOS</title>
</head>


<body>


    <table width="100%">
        <tr>
            <td colspan="6" style="text-align:center;width:100%;;">
                <img src="img/logoE.png" alt="" width="170  " height="150">
            </td>
            <br>
            <td style="text-align:center;width:100%; size=1" colspan="6">
                <br>
                <P>
                <h4>CONSULTORA & CONSTRUCTORA PEÑA-ANDRADE </h4>
                <h5>PLANILLA DE SUELDOS</h5>
                </P>

            </td>
        </tr>
    </table>
    <strong>-----------------------------------------------------------------------------------------------------------------------------</strong>
    <h6 style="text-align:center;width:100%; height=1">ASISTENCIAS Y FALTAS POR PARTE DEL PERSONAL DE CONSTRUCCION</h6>
    <strong>-----------------------------------------------------------------------------------------------------------------------------</strong>
    <table width="100%">
        <tr>
            <td style="text-align:left;width:100%;" colspan="4">
                <h5>Trabajador</h5>
            </td>
            <td style="text-align:left;width:100%;" colspan="4">
                <h5>Dias Trabajados</h5>
            </td>
            <td style="text-align:left;width:100%;" colspan="4">
                <h5>Permisos</h5>
            </td>
            <td style="text-align:left;width:100%;" colspan="4">
                <h5>Faltas</h5>
            </td>
            <td style="text-align:left;width:100%;" colspan="4">
                <h5>Sueldo</h5>
            </td>

        </tr>

        @foreach ($trabajadors as $trabs)
            <tr>
                @foreach ($users as $user)
                    @if ($user->id == $trabs->idusuario)
                        <td style="text-align:left;width:100%; " colspan="4">
                            <hr style="width: 100%;height: -20px;">
                            <font size=1>{{ $user->name }}</font>
                        </td>
                    @endif
                @endforeach
                {{ $asistencia = 0 }} {{ $permiso = 0 }}{{ $falta = 0 }}{{ $sueldo = 0 }}
                @foreach ($coordenadas as $coords)
                    @if ($trabs->id == $coords->idcampo)
                        {{ $asistencia = $asistencia + 1 }}
                    @endif
                @endforeach
                <td style="text-align:center;width:100%; " colspan="4">
                    <hr style="width: 100%;height: -20px;">
                    <font size=2>{{ $asistencia }}</font>
                </td>
                @foreach ($permisofaltas as $pf)
                    @if ($pf->idusuario == $trabs->id)
                        @if ($pf->tipo == 'FALTA')
                            {{ $falta = $falta + 1 }}
                        @else
                            {{ $permiso = $permiso + 1 }}
                        @endif
                    @endif
                @endforeach
                <td style="text-align:center;width:100%; " colspan="4">
                    <hr style="width: 100%;height: -20px;">
                    <font size=2>{{ $permiso }}</font>
                </td>
                <td style="text-align:center;width:100%; " colspan="4">
                    <hr style="width: 100%;height: -20px;">
                    <font size=2>{{ $falta }}</font>
                </td>
                <td style="text-align:center;width:100%; " colspan="4">
                    <hr style="width: 100%;height: -20px;">
                    <font size=2>{{ $sueldo = ($asistencia + $permiso) * 140 }}</font>
                </td>
            </tr>
        @endforeach
        <tr>
            <td style="text-align:center;width:100%; " colspan="6">
                <br><br><br><br><br>
                <hr style="width: 50%;height: -20px; size:100px; color:blue">
                <strong>Firma Trabajador</strong>
                <strong></strong>
            </td>
            <td style="text-align:center;width:100%; " colspan="6">
                <br><br><br><br><br>
                <hr style="width: 50%;height: -20px; size:100px">
                <strong>Administrador</strong>
        </tr>
    </table>
    <footer>
    </footer>
</body>

</html>
