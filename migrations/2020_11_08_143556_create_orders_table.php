<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->string('order_number')->nullable();
            $table->string('order_desciption')->nullable();
            $table->integer('member_id')->nullable();
            $table->integer('payment_type_id')->nullable();
            $table->integer('order_type_id')->nullable();
            $table->integer('member_address_id')->nullable();
            $table->integer('status_id')->default('1');
            $table->integer('currency_id')->nullable();
            $table->integer('store_id')->nullable();
            $table->float('total_price')->nullable();
            $table->float('net_total_price')->nullable();
            $table->float('total_discount')->nullable();
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
        Schema::dropIfExists('orders');
    }
}
