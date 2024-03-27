<?php

namespace App\Http\Controllers;

use App\Models\category;
use Illuminate\Http\Request; // Perbaikan import

class CategoryApiController extends Controller
{
    public function index()
    {
        $categories = Category::paginate(10);
        return response()->json($categories);
    }

    public function search(Request $request)
    {
        $search = $request->input('search');
        $categories = Category::where('name', 'like', "%$search%")->paginate(10);
        return response()->json($categories);
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'is_publish' => 'boolean',
        ]);

        $category = Category::create($validatedData);

        return response()->json($category, 201);
    }

    public function show(Category $category)
    {
        return response()->json($category);
    }

    public function update(Request $request, Category $category)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'is_publish' => 'boolean',
        ]);

        $category->update($validatedData);

        return response()->json($category, 200);
    }

    public function destroy(Category $category)
    {
        $category->delete();

        return response()->json(null, 204);
    }
}
