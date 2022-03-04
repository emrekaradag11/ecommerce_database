<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderDtlTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_dtl', function (Blueprint $table) {
            $table->id();
            $table->integer('order_id')->nullable();
            $table->integer('product_id')->nullable();
            $table->integer('variant_id')->nullable();
            $table->integer('category_id')->nullable();
            $table->integer('brand_id')->nullable();
            $table->integer('product_unit_id')->nullable();
            $table->integer('piece')->nullable();
            $table->integer('currency_id')->nullable();
            $table->float('price')->nullable();
            $table->float('currency_rate')->nullable();
            $table->float('cargo_price')->nullable();
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
        Schema::dropIfExists('order_dtl');
    }
}
