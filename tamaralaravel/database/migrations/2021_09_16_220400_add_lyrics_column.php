<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddLyricsColumn extends Migration {
  /**
   * Run the migrations.
   *
   * @return void
   */
  public function up() {
    Schema::table('songs', function (Blueprint $table) {
      $table->string('lyrics', 5000);
    });
  }

  /**
   * Reverse the migrations.
   *
   * @return void
   */
  public function down() {
    Schema::table('songs', function (Blueprint $table) {
      $table->dropColumn('lyrics');
    });
  }
}
