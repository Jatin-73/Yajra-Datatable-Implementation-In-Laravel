<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        //$this->call(UsersTableSeeder::class);
        for ($i=0; $i < 25; $i++) 
        {
             DB::table('order_statuses')->insert([
                'order_name'    => Str::random(10),
                'order_status'  => Str::random(10),
                'used_internal' => Str::random(10),
                'grand_total'   => Str::random(10),
                'created_at'    => date('Y-m-d H:i:s'),
                'updated_at'    => date('Y-m-d H:i:s'),
            ]);
        }
    }
}
