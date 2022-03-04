<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductDtlTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_dtl', function (Blueprint $table) {
            $table->id();
            $table->integer('product_id');
            $table->string('product_code');
            $table->string('variant_code')->nullable();
            $table->integer('variant_group_id')->nullable();
            $table->integer('kdv')->nullable();
            $table->integer('shipping_day')->nullable();
            $table->integer('type_id');
            $table->decimal('price',12,2);
            $table->integer('stock')->nullable();
            $table->decimal('shipping_price',12,2);
            $table->json('old_prices')->nullable();
            $table->integer('currency_id');
            $table->integer('stock_status_id')->default('0');
            $table->string('barcode')->nullable();
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
        Schema::dropIfExists('product_dtl');
    }
}
