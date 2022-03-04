<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderDtlDiscountTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_dtl_discount', function (Blueprint $table) {
            $table->id();
            $table->integer('type_id')->nullable();
            $table->integer('order_dtl_id')->nullable();
            $table->integer('product_id')->nullable();
            $table->integer('variant_id')->nullable();
            $table->float('rate')->nullable();
            $table->float('over_the_amount')->nullable();
            $table->float('price')->nullable();
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
        Schema::dropIfExists('order_dtl_discount');
    }
}
