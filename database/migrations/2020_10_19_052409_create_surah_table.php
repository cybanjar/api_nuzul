<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSurahTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('surah', function (Blueprint $table) {
            $table->id();
            $table->string('surat');
            $table->string('ayah');
            $table->longText('because')->nullable();
            $table->string('index');
            $table->string('sanad');
            $table->string('isnad');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('surah');
    }
}
