@extends('layouts.app')

@section('content')
<div class="container mt-3 d-flex justify-content-center">
    <div class="card mx-auto p-2" style="width: 400px; background-color: #f8f9fa;">
        <div class="card-body">
            <h4 class="card-title">Create Category</h4>
            <form action="{{ route('categories.store') }}" method="POST">
                @csrf
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter category name">
                </div>
                <div class="form-group form-check my-2">
                    <input type="checkbox" class="form-check-input" id="is_publish" name="is_publish" value="1">
                    <label class="form-check-label" for="is_publish">Publish</label>
                </div>
                <a href="/categories" class="btn btn-info">Back</a>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</div>
@endsection
