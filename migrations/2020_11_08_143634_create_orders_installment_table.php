<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersInstallmentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders_installment', function (Blueprint $table) {
            $table->id();
            $table->integer('bank_id')->nullable();
            $table->integer('number_of_installments')->nullable();
            $table->integer('order_id')->nullable();
            $table->float('installment_rate')->nullable();
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
        Schema::dropIfExists('orders_installment');
    }
}
