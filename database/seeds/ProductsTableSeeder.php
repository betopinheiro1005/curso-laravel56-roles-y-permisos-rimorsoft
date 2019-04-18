<?php

use Illuminate\Database\Seeder;

class ProductsTableSeeder extends Seeder
{
    public function run()
    {
        factory(App\Product::class, 80) -> create();
    }
}
