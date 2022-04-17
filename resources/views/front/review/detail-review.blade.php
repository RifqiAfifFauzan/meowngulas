@extends('front.layouts.frontend')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-lg-8 mt-4">
            <div class="div">
                <img src="{{ asset('uploads/'.$review->gambar_review) }}" class="img/fluid">
            </div>
            <div class="detail-content mt-2 p-4">
                <div class="detail-badge">
                    <a href="" class="badge badge-warning">{{ $review->genre->nama_genre }}</a>
                    <a href="" class="badge badge-primary">{{ $review->user->name }}</a>
                </div>
                <h2>{{ $review->judul }}</h2>
                <div class="detail-body">
                    <p>
                        {!! $review->body !!}
                    </p>
                </div>
            </div>
        </div>
        <div class="col-lg-4"></div>
    </div>
</div>
@endsection