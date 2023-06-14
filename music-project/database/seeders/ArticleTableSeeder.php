<?php

namespace Database\Seeders;

use App\Models\Article;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class ArticleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $faker = Faker::create();

        for ($i = 0; $i < 24; $i++) {
            Article::create([
                'ma_bviet' => $i+1,
                'tieude' => $faker->sentence(10, true),
                'ten_bhat' => $faker->sentence(5, true),
                //'ma_tloai' => $i+1,
                // generate data from 1 -4
                'ma_tloai' => $faker->numberBetween(1,5),
                'tomtat' => $faker->paragraph(3, true),
                'noidung' => $faker->paragraph(3, true),
                'ma_tgia' =>  $faker->numberBetween(1,5),
                'ngayviet' => $faker->dateTime(),
                // 'hinhanh' => $faker->imageUrl(200,200,'animals',true),
                'hinhanh' => $faker->imageUrl(200, 200, 'peoples', true),
            ]);
        }
    }
}