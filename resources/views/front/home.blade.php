
@extends('front.layouts.frontend')

@section('content')
@include('front.includes.slide')
<div class="container">
    <h1 class="mt-3 text-center">Latest Review</h1>
</div>
<div class="container">
    <div class="row">
        <?php $count = 0; ?>
        @foreach ($review as $row)

        <?php if($count == 3) break; ?>
        <div class="col-md-4 mt-3">
            <div class="card">
                <img class="card-img-top" src="{{ asset('uploads/'.$row->gambar_review)}}">
                <div class="card-body">
                  <h5 class="card-title">
                      <a href=" {{ route('detail-review', $row->slug) }} ">
                        {{ $row->judul }}
                      </a>
                  </h5>
                  {{-- <p class="card-text">{!! $row->body !!}</p> --}}
                </div>
                <div class="card-body">
                    {{-- @for($i=1; $i<=$review->rating; $i++)
                        <span><i class="fa fa-star text-warning"></i></span>
                    @endfor
                    <br> --}}
                  <a href="#" class="card-link">{{ $row->user->name }}</a>
                  <a href="#" class="card-link">{{ $row->genre->nama_genre }}</a>
                </div>
            </div>
        </div>
        <?php $count++; ?>
        @endforeach
    </div>
    <div class="container">
        <h1 class="mt-3 text-center">Latest News</h1>
    </div>

    <div class="container">
        <div class="row">
            @foreach ($news as $row)
                <div class="col-md-4 mt-3">
                    <div class="card">
                        <img class="card-img-top" src="{{ asset('uploads/'.$row->gambar_news)}}">
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href=" {{ route('detail-news', $row->slug) }} ">
                                    {{ $row->jduul }}
                                </a>
                            </h5>
                            <div class="card-body">
                                <a href="#" class="card-link">{{ $row->user->name }}</a>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>

</div>

@endsection
