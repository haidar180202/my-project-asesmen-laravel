<?php

namespace Tests\Unit;

use Tests\TestCase;
use App\Models\Category;
use Illuminate\Foundation\Testing\RefreshDatabase;

class CategoryApiTest extends TestCase
{
    use RefreshDatabase;

    public function testIndex()
    {
        $response = $this->get(route('categoriesApi.index'));
        $response->assertStatus(200);
    }

    public function testSearch()
    {
        $response = $this->get(route('categoriesApi.search', ['search' => 'example']));
        $response->assertStatus(200);
    }

    public function testStore()
    {
        $categoryData = [
            'name' => 'Test Category',
            'is_publish' => true,
        ];

        $response = $this->post(route('categoriesApi.store'), $categoryData);
        $response->assertStatus(201);
    }

    public function testShow()
    {
        $category = Category::factory()->create();

        $response = $this->get(route('categoriesApi.show', ['category' => $category->id]));
        $response->assertStatus(200);
    }

    public function testUpdate()
    {
        $category = Category::factory()->create();
        $updatedData = [
            'name' => 'Updated Category',
            'is_publish' => false,
        ];

        $response = $this->put(route('categoriesApi.update', ['category' => $category->id]), $updatedData);
        $response->assertStatus(200);
    }

    public function testDestroy()
    {
        $category = Category::factory()->create();

        $response = $this->delete(route('categoriesApi.destroy', ['category' => $category->id]));
        $response->assertStatus(204);
    }
}
