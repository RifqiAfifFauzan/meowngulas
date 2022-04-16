@extends('front.layouts.frontend')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-lg-8 mt-4">
            <div class="div">
                <img src="{{ asset('uploads/'.$review->gambar_review) }}" class="img/fluid">
            </div>
        </div>
        <div class="col-lg-4"></div>
    </div>
</div>
@endsection
