@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">Produto</div>
                <div class="card-body">
                    <p><strong>Produto: </strong> {{ $product->name }}</p>
                    <p><strong>Descrição: </strong> {{ $product->description }}</p>
                </div>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>
</div>
@endsection
