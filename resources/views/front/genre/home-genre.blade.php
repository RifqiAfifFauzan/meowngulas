@extends('front.layouts.frontend')

@section('content')
<div class="container">
    <h1 class="mt-3 text-center">GENRES</h1>
</div>
<div class="container">
    <div class="col mt-4">
        @foreach ($genre as $row)
            <div class="list-group">
                <a href="{{ route('review-genre',['slug' => $row->slug]) }}" class="list-group-item list-group-item-action">
                    {{ $row->nama_genre }}
                </a>
            </div>
        @endforeach
    </div>
</div>
@endsection
