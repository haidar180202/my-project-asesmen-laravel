<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request; // Perbaikan import

use App\Models\User;
use App\Models\category;

use Notification;

use App\Mail\CategoryNotificationMail;
use App\Notifications\CategoryNotification;
use Illuminate\Support\Facades\Mail;


class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::paginate(10);
        return view('categories.index', compact('categories'));
    }

    public function search(Request $request)
    {
        $search = $request->input('search');
        $categories = Category::where('name', 'like', "%$search%")->paginate(10);
        return view('categories.index', compact('categories'));
    }

    public function create()
    {
        return view('categories.create');
    }

    public function store(Request $request)
    {
        // Validasi input data
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'is_publish' => 'boolean',
        ]);

        // Simpan kategori baru
        $category = new Category();
        $category->name = $request->name;
        $category->is_publish = $request->has('is_publish'); // Atur is_publish berdasarkan keberadaan input
        $category->save();

        // Kirim notifikasi kepada semua pengguna
        $users = User::all();

        // Mengirim email notifikasi ke setiap pengguna
        foreach ($users as $user) {
            $user->notify(new CategoryNotification($category->name, 'Telah Ditambahkan'));
        }

        return redirect()->route('categories.index')->with('success', 'Category created successfully.');

    }
    public function edit(Category $category)
    {
        return view('categories.edit', compact('category'));
    }

    public function update(Request $request, Category $category)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'is_publish' => 'boolean',
        ]);

        $category->update($validatedData);

        return redirect()->route('categories.index')->with('success', 'Category updated successfully.');
    }

    public function destroy(Category $category)
    {
        $categoryName = $category->name;
        $category->delete();

        $users = User::all();

        foreach ($users as $user) {
            $user->notify(new CategoryNotification($categoryName,'Telah Dihapus'));
        }

        return redirect()->route('categories.index')->with('success', 'Category deleted successfully.');

        // Mengirim email notifikasi ke setiap pengguna
        

    }
}
