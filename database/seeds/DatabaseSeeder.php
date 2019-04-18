<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        $this->call(PermissionsTableSeeder::class);
        $this->call(ProductsTableSeeder::class);
        $this->call(UsersTableSeeder::class);
    }
}
