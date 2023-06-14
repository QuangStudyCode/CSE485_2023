<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create();
        // chạy vòng lặp để sinh dữ liệu
        for ($i = 0; $i < 30; $i++) {
            // khởi tạo đối tượng 
            Category::create([
                'ma_tloai' => $i+1,
                'ten_tloai' => $faker->sentence(2, true),
            ]);
        }
    }
}