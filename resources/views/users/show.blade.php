@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">Usuário</div>
                <div class="card-body">
                    <p><strong>Nome: </strong> {{ $user->name }}</p>
                    <p><strong>Email: </strong> {{ $user->email }}</p>
                </div>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>
</div>
@endsection
