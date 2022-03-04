<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMemberStockAlarmTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('member_stock_alarm', function (Blueprint $table) {
            $table->id();
            $table->integer('product_id')->nullable();
            $table->integer('variant_id')->nullable();
            $table->integer('member_id')->nullable();
            $table->integer('status_id')->default('1');
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
        Schema::dropIfExists('member_stock_alarm');
    }
}
