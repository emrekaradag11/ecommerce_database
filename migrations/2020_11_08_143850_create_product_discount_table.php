<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductDiscountTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_discount', function (Blueprint $table) {
            $table->id();
            $table->integer('type_id')->nullable();
            $table->integer('product_dtl_id')->nullable();
            $table->float('rate')->nullable();
            $table->float('over_the_amount')->nullable();
            $table->float('price')->nullable();
            $table->dateTime('start_date')->nullable();
            $table->dateTime('finish_date')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('product_discount');
    }
}
