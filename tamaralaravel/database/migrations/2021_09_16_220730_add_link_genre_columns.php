<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddLinkGenreColumns extends Migration {
  /**
   * Run the migrations.
   *
   * @return void
   */
  public function up() {
    Schema::table('songs', function (Blueprint $table) {
      $table->string('link', 250);
      $table->string('genre', 100);
    });
  }

  /**
   * Reverse the migrations.
   *
   * @return void
   */
  public function down() {
    Schema::table('songs', function (Blueprint $table) {
      $table->dropColumn('link');
      $table->dropColumn('genre');
    });
  }
}
