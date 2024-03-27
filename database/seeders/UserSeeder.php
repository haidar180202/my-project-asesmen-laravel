<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Muhammad Haidar Shb',
            'email' => 'muhammadhaidarshb@gmail.com',
            'password' => Hash::make('Haidar18$02'), // Ganti password dengan password yang sesuai
        ]);
    }
}
