<?php

namespace Database\Seeders;

use App\Models\Prod;
use App\Models\Product;
use App\Models\Categoryy;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Categoryy::factory(6)->create();
        \App\Models\Product::factory(22)->create();
    }
}
