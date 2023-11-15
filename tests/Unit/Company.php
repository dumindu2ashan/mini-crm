<?php

namespace Tests\Unit;

use App\Http\Controllers\CompanyController;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class Company extends TestCase
{
    use RefreshDatabase;
    /**
     * A basic unit test example.
     *
     * @return void
     */
    public function test_login_true()
    {
        $this->assertTrue(true);
    }
}
