<div class="form-group">
	{{ Form::label('name', 'Nome') }}
	{{ Form::text('name', null, ['class' => 'form-control']) }}
</div>
<hr>
<h3>Lista de roles</h3>
<div class="form-group">
	<ul class="list-unstyled">
		@foreach($roles as $role)
			<li>
				<label>
					{{ Form::checkbox('roles[]', $role->id, null) }}
					{{ $role->name }}
					<em>({{ $role->description ? : 'Sem descrição' }})</em>
				</label>
			</li>
		@endforeach
	</ul>
</div>
<div class="form-group">
	{{ Form::submit('Gravar', ['class' => 'btn btn-sm btn-primary']) }}
</div>
