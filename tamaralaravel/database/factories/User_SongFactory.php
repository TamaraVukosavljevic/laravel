<?php

namespace Database\Factories;

use App\Models\Song;
use App\Models\User;
use App\Models\User_Song;
use Illuminate\Database\Eloquent\Factories\Factory;

class User_SongFactory extends Factory {
  /**
   * The name of the factory's corresponding model.
   *
   * @var string
   */
  protected $model = User_Song::class;

  /**
   * Define the model's default state.
   *
   * @return array
   */
  public function definition() {
    $users = User::all();
    $songs = Song::all();

    return [
      'user_id' => rand($users[0]['id'], $users[sizeof($users) - 1]['id']),
      'song_id' => rand($songs[0]['id'], $songs[sizeof($songs) - 1]['id']),
    ];
  }
}
