@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">Role</div>
                <div class="card-body">
                    <p><strong>Role: </strong> {{ $role->name }}</p>
                    <p><strong>Slug: </strong> {{ $role->slug }}</p>
                    <p><strong>Descrição: </strong> {{ $role->description }}</p>
                </div>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>
</div>
@endsection
