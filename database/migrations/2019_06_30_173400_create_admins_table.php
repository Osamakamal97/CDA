<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAdminsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
//        Schema::create('admins', function (Blueprint $table) {
//            $table->increments('id');
//            $table->string('name');
//            $table->string('email');
//            $table->string('password');
//            $table->string('image');
//            $table->enum('type',['0','1','2']); // 0 super admin 1 sub admin 2 admin
//            $table->boolean('active')->default(true);
//            $table->timestamps();
//        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('admins');
    }
}
