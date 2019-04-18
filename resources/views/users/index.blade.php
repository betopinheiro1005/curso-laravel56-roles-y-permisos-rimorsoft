@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">
                    Usuários
                </div>
                <div class="card-body">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th width="10px">ID</th>
                                <th>Nome</th>
                                <th colspan="3">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($users as $user)
                                <tr>
                                    <td>{{ $user->id }}</td>
                                    <td>{{ $user->name }}</td>
                                    <td width="10px">
                                        @can('users.show')
                                            <a href="{{ route('users.show', $user->id) }}"
                                                class="btn btn-sm btn-success">Ver</a>
                                        @endcan
                                    </td>
                                    <td width="10px">
                                        @can('users.edit')
                                            <a href="{{ route('users.edit', $user->id) }}"
                                                class="btn btn-sm btn-warning">Editar</a>
                                        @endcan
                                    </td>
                                    <td width="10px">
                                        @can('users.destroy')
                                            {!! Form::open(['route' => ['users.destroy', $user->id],
                                            'method' => 'DELETE']) !!}
                                                <button class="btn btn-sm btn-danger">Eliminar</button>
                                            {!! Form::close() !!}
                                        @endcan
                                    </td>
                                </tr>
                            @endforeach

                        </tbody>
                    </table>
                    {{ $users->render() }}
                </div>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>
</div>
@endsection
