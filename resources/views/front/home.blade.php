
@extends('front.layouts.frontend')

@section('content')
@include('front.includes.slide')
<div class="container">
    <h1 class="mt-3 text-center text-light">Latest Review</h1>
</div>
<div class="container ">
    <div class="row">
        <?php $count = 0; ?>
        @foreach ($review as $row)

        <?php if($count == 3) break; ?>
        <div class="col-md-4 mt-3 ">
            <div class="card">
                <img class="card-img-top" src="{{ asset('uploads/'.$row->gambar_review)}}">
                <div class="card-body ">
                  <h5 class="card-title">
                      <a href=" {{ route('detail-review', $row->slug) }} ">
                        {{ $row->judul }}
                      </a>
                  </h5>
                  {{-- <p class="card-text">{!! $row->body !!}</p> --}}
                </div>
                <div class="card-body">

            @foreach(range(1,5) as $i)
                <span class="fa-stack" style="width:1em">
                    <i class="far fa-star fa-stack-1x"></i>

                    @if($row->rating >0)
                        @if($row->rating >0.5)
                            <i class="fas fa-star fa-stack-1x"></i>
                        @else
                            <i class="fas fa-star-half fa-stack-1x"></i>
                        @endif
                    @endif
                    @php $row->rating--; @endphp
                </span>
            @endforeach
                <br>
                    <a href="#" class="card-link">{{ $row->genre->nama_genre }}</a>
                    <p class="card-text"><small class="text-muted">{{ $row->user->name }}</small></p>
                </div>
            </div>
        </div>
        <?php $count++; ?>
        @endforeach
    </div>
    <div class="container">
        <h1 class="mt-3 text-center text-light"">Latest News</h1>
    </div>

    <div class="container text-light">
        <div class="row">
            <?php $count = 0; ?>
            @foreach ($news as $row)

            <?php if($count == 3) break; ?>
            <div class="col-md-4">
                <img src="{{ asset('uploads/'.$row->gambar_news)}}" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-8 ">
                <div class="card-body ">
                    <h5 class="card-title "><a class="text-light"href="{{ route('detail-news', $row->slug) }}">{{ $row->judul }}</a></h5>
                    <p class="card-text">{!! Str::limit($row->body, 200) !!}</p>
                    <p class="card-text"><small class="text-muted">{{ $row->user->name }}&nbsp&nbsp{{ $row->created_at }}</small></p>
                </div>
            </div>

            <?php $count++; ?>
            @endforeach
        </div>
    </div>

</div>

@endsection
