<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('text')->nullable();
            $table->string('description')->nullable();
            $table->string('keywords')->nullable();
            $table->string('tags')->nullable();
            $table->integer('brand_id');
            $table->integer('category_id');
            $table->integer('product_unit_id');
            $table->integer('status_id')->default('1');
            $table->integer('variant_status_id')->default('0');
            $table->integer('ord')->nullable();
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
        Schema::dropIfExists('products');
    }
}
