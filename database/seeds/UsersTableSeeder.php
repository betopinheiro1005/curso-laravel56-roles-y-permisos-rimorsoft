<?php

use Illuminate\Database\Seeder;
use Caffeinated\Shinobi\Models\Role;

class UsersTableSeeder extends Seeder
{
    public function run()
    {
        factory(App\User::class, 20)->create();
        Role::create([
      		'name' => 'Admin',
      		'slug' => 'admin',
      		'special' => 'all-access'
        ]);
    }
}
