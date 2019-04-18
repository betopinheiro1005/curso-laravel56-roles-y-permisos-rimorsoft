<?php

use Illuminate\Database\Seeder;
use Caffeinated\Shinobi\Models\Permission;

class PermissionsTableSeeder extends Seeder
{
    public function run()
    {
    	// users
        Permission::create([
        	'name' 	=> 'Exibir usuários',
        	'slug' 	=> 'users.index',
        	'description' => 'Lista e exibe todos os usuários do sistema',
        ]);
        Permission::create([
        	'name' 	=> 'Ver detalhes de usuário',
        	'slug'	=> 'users.show',
        	'description' => 'Ver em detalhes cada usuário do sistema',
        ]);
        Permission::create([
        	'name' 	=> 'Edição de usuários',
        	'slug' 	=> 'users.edit',
        	'description' => 'Editar qualquer dado de um usuário do sistema',
        ]);
        Permission::create([
        	'name' 	=> 'Eliminar usuário',
        	'slug' 	=> 'users.destroy',
        	'description' => 'Eliminar qualquer usuário do sistema',
        ]);

        // Roles

        Permission::create([
        	'name' 	=> 'Exibir roles',
        	'slug' 	=> 'roles.index',
        	'description' => 'Lista e exibe todos os roles do sistema',
        ]);
        Permission::create([
        	'name' 	=> 'Ver detalhes de rol',
        	'slug' 	=> 'roles.show',
        	'description' => 'Ver em detalhes cada role do sistema',
        ]);

        Permission::create([
        	'name' 	=> 'Criação de rol',
        	'slug' 	=> 'roles.create',
        	'description' => 'Criar role do sistema',
        ]);
        Permission::create([
        	'name' 	=> 'Edição de rol',
        	'slug' 	=> 'roles.edit',
        	'description' => 'Editar qualquer dado de um role do sistema',
        ]);
        Permission::create([
        	'name' 	=> 'Eliminar rol',
        	'slug' 	=> 'roles.destroy',
        	'description' => 'Eliminar qualquer role do sistema',
        ]);

        // Products

        Permission::create([
        	'name' 	=> 'Exibir produtos',
        	'slug' 	=> 'products.index',
        	'description' => 'Lista e exibe todos os produtos do sistema',
        ]);
        Permission::create([
        	'name' 	=> 'Ver detalhes de produto',
        	'slug' 	=> 'products.show',
        	'description' => 'Ver em detalhes cada produto do sistema',
        ]);
        Permission::create([
        	'name' 	=> 'Criação de produto',
        	'slug' 	=> 'products.create',
        	'description' => 'Criar produto do sistema',
        ]);
        Permission::create([
        	'name' 	=> 'Edição de produto',
        	'slug' 	=> 'products.edit',
        	'description' => 'Editar qualquer dado de um produto do sistema',
        ]);
        Permission::create([
        	'name' 	=> 'Eliminar produto',
        	'slug' 	=> 'products.destroy',
        	'description' => 'Eliminar qualquer produto do sistema',
        ]);
    }
}
