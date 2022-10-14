<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMoviesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('movies', function (Blueprint $table) {
           
            $table->string('Title');
            $table->integer('Year');
           $table->string('Summary');
            $table->string('Short_Summary');
           $table->string('Genres');
           $table->string('IMDBID');
            $table->integer('Runtime');
           $table->string('YouTube_Trailer');
            $table->float('Rating');
            $table->string('Movie_Poster');
            $table->string('Director');
            $table->string('Writers');
           $table->string('Cast');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('movies');
    }
}
