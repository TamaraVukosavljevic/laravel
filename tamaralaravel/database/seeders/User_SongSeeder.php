<?php

namespace Database\Seeders;

use App\Models\User_Song;
use Illuminate\Database\Seeder;

class User_SongSeeder extends Seeder {
  /**
   * Run the database seeds.
   *
   * @return void
   */
  public function run() {
    User_Song::factory()->count(30)->create();
  }
}
