<?php

namespace Database\Factories;

use App\Models\Song;
use Illuminate\Database\Eloquent\Factories\Factory;

class SongFactory extends Factory {
  /**
   * The name of the factory's corresponding model.
   *
   * @var string
   */
  protected $model = Song::class;

  /**
   * Define the model's default state.
   *
   * @return array
   */
  public function definition() {
    return [
      'name' => $this->faker->name(),
      'lyrics' => $this->faker->text(300),
      'duration' => rand(60, 180),
      'link' => 'https://www.youtube.com/watch?v=BSzSn-PRdtI', // password
      'genre' => "Heavy Metal",
    ];
  }
}
