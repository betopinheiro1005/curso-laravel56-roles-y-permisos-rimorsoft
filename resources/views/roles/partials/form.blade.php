<div class="form-group">
	{{ Form::label('name', 'Nome') }}
	{{ Form::text('name', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	{{ Form::label('slug', 'URL amigável') }}
	{{ Form::text('slug', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	{{ Form::label('description', 'Descrição') }}
	{{ Form::textarea('description', null, ['class' => 'form-control']) }}
</div>
<hr>
<h3>Permissão especial</h3>
<div class="form-group">
	<label>{{ Form::radio('special', 'all-access') }} Acesso Total</label>
	<label>{{ Form::radio('special', 'no-access') }} Nenhum Acesso</label>
</div>
<h3>Lista de permissions</h3>
<div class="form-group">
	<ul class="list-unstyled">
		@foreach($permissions as $permission)
			<li>
				<label>
					{{ Form::checkbox('permissions[]', $permission->id, null) }}
					{{ $permission->name }}
					<em>({{ $permission->description ? : 'Sem descrição' }})</em>
				</label>
			</li>
		@endforeach
	</ul>
</div>
<div class="form-group">
	{{ Form::submit('Gravar', ['class' => 'btn btn-sm btn-primary']) }}
</div>
