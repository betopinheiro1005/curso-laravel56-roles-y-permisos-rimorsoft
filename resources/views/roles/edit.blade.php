@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">Role</div>
                <div class="card-body">
                    {!! Form::model($role, ['route' => ['roles.update', $role->id], 'method' => 'PUT']) !!}
                        @include('roles.partials.form')
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>
</div>
@endsection
