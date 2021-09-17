<?php

namespace App\Http\Controllers;

use App\Models\Song;
use Illuminate\Http\Request;

class SongController extends Controller {
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index() {
    return response(["data" => Song::all(), "message" => "Success"], 200);
  }

  /**
   * Store a newly created resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\Response
   */
  public function store(Request $request) {
    $song = new Song;

    $song->name = $request->name;
    $song->lyrics = $request->lyrics;
    $song->duration = $request->duration;
    $song->link = $request->link;
    $song->genre = $request->genre;

    $song->save();

    return response(["data" => $song, "message" => "Song Created"], 201);
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function show($id) {
    return response(["data" => Song::find($id), "message" => "Success"], 200);
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function update(Request $request, $id) {
    $song = Song::find($id);

    $song->name = $request->name;
    $song->lyrics = $request->lyrics;
    $song->duration = $request->duration;
    $song->link = $request->link;
    $song->genre = $request->genre;

    $song->save();

    return response(["data" => $song, "message" => "Song Updated"], 200);
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   * @return \Illuminate\Http\Response
   */
  public function destroy($id) {
    $song = Song::find($id);
    $song->delete();

    return response(["data" => $song, "message" => "Song Deleted"], 200);
  }
}
