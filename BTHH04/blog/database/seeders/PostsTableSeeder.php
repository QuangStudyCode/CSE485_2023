<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use Faker\Factory as Faker;
use App\Models\Post;

class PostsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        $faker = Faker::create();
        for ($i = 0; $i < 50; $i++) { // Creating 50 posts just forexample.
            Post::create([
                'title' => $faker->sentence(6, true), // Generates a randomsentence with 6 words.
                'body' => $faker->paragraphs(3, true), // Generates 3random paragraphs.
            ]);
        }   
    }
}

