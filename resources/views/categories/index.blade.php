@extends('layouts.app')

@section('content')
<div class="container">
    <div class="card mt-3 ">
        <div class="card-header d-flex justify-content-between align-items-center">
            <h2 class="mb-0">List Data Kategori</h2>
            <a href="{{ route('categories.create') }}" class="btn btn-primary">Tambah Kategori Baru</a>
        </div>

        <div class="card-body">
            <form action="{{ route('categories.search') }}" method="GET" class="mb-4">
                <div class="input-group">
                    <input type="text" name="search" class="form-control" placeholder="Cari kategori...">
                    <div class="input-group-append">
                        <button type="submit" class="btn btn-primary">Cari</button>
                    </div>
                </div>
            </form>

            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nama</th>
                            <th>Terbitkan</th>
                            <th>Created At</th>
                            <th>Updated At</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($categories as $category)
                        <tr>
                            <td>{{ $category->id }}</td>
                            <td>{{ $category->name }}</td>
                            <td>{{ $category->is_publish ? 'Ya' : 'Tidak' }}</td>
                            <td>{{ $category->created_at }}</td>
                            <td>{{ $category->updated_at }}</td>
                            <td>
                                <a href="{{ route('categories.edit', $category->id) }}" class="btn btn-sm btn-primary">Edit</a>
                                <form id="deleteForm" action="{{ route('categories.destroy', $category->id) }}" method="POST" style="display:inline">
                                    @csrf
                                    @method('DELETE')
                                    <button type="button" onclick="confirmDelete('{{ route('categories.destroy', $category->id) }}')" class="btn btn-sm btn-danger">Delete</button>
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

            <nav aria-label="Pagination Navigation" class="flex items-center justify-between">
                <div class="flex justify-between flex-1 sm:hidden">
                    @if ($categories->onFirstPage())
                        <span class="relative inline-flex items-center px-4 py-2 text-sm font-medium text-gray-500 bg-white border border-gray-300 cursor-default leading-5 rounded-md">Previous</span>
    
                    @else
                        <a href="{{ $categories->previousPageUrl() }}" class="relative inline-flex items-center px-4 py-2 ml-3 text-sm font-medium text-gray-700 bg-white border border-gray-300 leading-5 rounded-md hover:text-gray-500 focus:outline-none focus:ring ring-gray-300 focus:border-blue-300 active:bg-gray-100 active:text-gray-700 transition ease-in-out duration-150">Previous</a>
                        
                    @endif

                    <span class="relative inline-flex items-center px-4 py-2 text-sm font-medium text-gray-500 bg-white border border-gray-300 cursor-default leading-5 rounded-md" id="prosesdata">Page 1</span>

                    @if ($categories->hasMorePages())
                        <a href="{{ $categories->nextPageUrl() }}" class="relative inline-flex items-center px-4 py-2 ml-3 text-sm font-medium text-gray-700 bg-white border border-gray-300 leading-5 rounded-md hover:text-gray-500 focus:outline-none focus:ring ring-gray-300 focus:border-blue-300 active:bg-gray-100 active:text-gray-700 transition ease-in-out duration-150">Next</a>
                    @else
                        <span class="relative inline-flex items-center px-4 py-2 ml-3 text-sm font-medium text-gray-500 bg-white border border-gray-300 cursor-default leading-5 rounded-md">Next</span>
                    @endif
                </div>
            </nav>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<script>
     function confirmDelete(url) {
        Swal.fire({
            title: 'Apakah Anda yakin?',
            text: "Anda tidak akan bisa mengembalikan data yang telah dihapus!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya, hapus!',
            cancelButtonText: 'Batal'
        }).then((result) => {
            if (result.isConfirmed) {
                // Submit form if confirmed
                document.getElementById('deleteForm').submit();
            }
        });
    }
</script>

<script>
    
$(document).ready(function(){
    // Membaca parameter URL
    let urlParams = new URLSearchParams(window.location.search);
    let pageParam = urlParams.get('page');
    
    // Jika parameter 'page' ditemukan dalam URL
    if (pageParam !== null) {
        // Set nilai id prosesdata sesuai dengan parameter 'page'
        $('#prosesdata').text("Page " + pageParam);
    } else {
        $('#prosesdata').text('Page 1');
    }
});
</script>
</script>


@endsection
