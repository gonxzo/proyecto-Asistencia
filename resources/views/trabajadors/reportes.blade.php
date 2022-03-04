@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">
                   REPORTE PLANILLA DE SUELDOS
                </div>
                <div class="card-body">
                    <form action="{{ route('reportes') }} " method="POST">
                    @csrf
                    <strong> <h5>PLANILLA DE SUELDOS</h5></strong>
                    <div class="form-row">
                        
                        <div class="form-group col-md-6">
                            <strong>{!! Form::label('fechaini1', 'FECHA INICIO')  !!}</strong>
                            <input type="date" name="fechaini1" id="fechaini" class="form-control">
                        </div>
                        <div class="form-group col-md-6">
                            <strong>{!! Form::label('fechafin1', 'FECHA FINAL') !!}</strong>
                            {!! Form::date('fechafin1', null, ['class' => 'form-control', 'onKeyUp' => 'this.value=this.value.toUpperCase();']) !!}
                        </div>
                        
                    <div class="form-row">
                        <div class="form-group col-md-3">
                            <div class="modal fade" id="modal121" tabindex="-1" role="dialog"
                                aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-body">
                                            <embed src="{{ route('trabajadors.reportefechas') }}" type="application/pdf"
                                                width="100%" height="750px" />
    
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                        <div class="form-group col-md-3">
                            <div class="modal fade" id="modal12" tabindex="-1" role="dialog"
                                aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-body">
                                           {{--  <embed src="{{ route('pedidocoms.reportespdf') }}" type="application/pdf"
                                                width="100%" height="750px" /> --}}
    
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-sm btn-primary mb-1" data-toggle="modal" data-target="#modal121" value="Reporte por fechas">
                            GENERA REPORTE POR INTERVALOS</button>
                       {{--  <button type="submit" class="btn btn-sm btn-primary mb-1" data-toggle="modal" data-target="#modal12">
                            GENERA REPORTE TOTAL</button> --}}
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

