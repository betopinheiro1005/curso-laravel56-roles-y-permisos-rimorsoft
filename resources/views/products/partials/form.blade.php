<div class="form-group">
	{{ Form::label('name', 'Nome do produto') }}
	{{ Form::text('name', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	{{ Form::label('description', 'Descrição do produto') }}
	{{ Form::text('description', null, ['class' => 'form-control']) }}
</div>
<div class="form-group">
	{{ Form::submit('Gravar', ['class' => 'btn btn-sm btn-primary']) }}
</div>
