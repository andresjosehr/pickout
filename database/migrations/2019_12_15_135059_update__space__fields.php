<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateSpaceFields extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('bravo_spaces', function (Blueprint $table) {
            //
            $table->string('phone')->nullable();
            $table->string('open_am')->nullable();
            $table->string('open_pm')->nullable();
            $table->text('menu')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('bravo_spaces', function (Blueprint $table) {
            //
            $table->dropColumn('phone');
            $table->dropColumn('open_am');
            $table->dropColumn('open_pm');
            $table->dropColumn('menu');
        });
    }
}
