@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">Produto</div>
                <div class="card-body">
                    {!! Form::open(['route' => 'products.store']) !!}
                        @include('products.partials.form')
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>
</div>
@endsection
