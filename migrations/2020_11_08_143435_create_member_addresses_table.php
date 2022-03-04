<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMemberAddressesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('member_addresses', function (Blueprint $table) {
            $table->id();
            $table->integer('member_id')->nullable();
            $table->integer('status_id')->default('1');
            $table->integer('country_id')->nullable();
            $table->integer('province_id')->nullable();
            $table->integer('district_id')->nullable();
            $table->integer('type_id')->nullable();
            $table->integer('default')->nullable();
            $table->string('tax_administration')->nullable();
            $table->string('tax_number')->nullable();
            $table->string('addres_title')->nullable();
            $table->string('company_name')->nullable();
            $table->string('post_code')->nullable();
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
        Schema::dropIfExists('member_addresses');
    }
}
