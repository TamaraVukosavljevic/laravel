<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class User_SongController extends Controller {
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index($user_id) {
    $users = DB::select("SELECT *, u.name AS user_name FROM `user_songs` us JOIN `users` u ON u.id = us.user_id JOIN `songs` s ON s.id = us.song_id WHERE us.user_id = $user_id");

    return response(["data" => $users, "message" => "Success"], 200);
  }
}
