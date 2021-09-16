<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class User_Song extends Model {
  use HasFactory;

  public $table = 'user_songs';

  protected $fillable = [
    'user_id',
    'song_id',
  ];

  public function user() {
    return $this->belongsTo(User::class);
  }

  public function song() {
    return $this->belongsTo(Song::class);
  }
}
