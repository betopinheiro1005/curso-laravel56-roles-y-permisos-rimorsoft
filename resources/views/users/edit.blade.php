@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">Usuário</div>
                <div class="card-body">
                    {!! Form::model($user, ['route' => ['users.update', $user->id], 'method' => 'PUT']) !!}
                        @include('users.partials.form')
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>
</div>
@endsection
