@extends('front.layouts.frontend')

@section('content')
<div class="container">
    <h1 class="mt-3 text-center">Search</h1>
    {{-- <p class="text-center">{{Mari lihat ulasan sebelum kamu menonton!}}</p> --}}
</div>
<div class="container">
    <div class="row">
        @foreach ($review as $row)
        <div class="col-md-4 mt-3">
            <div class="card">
                <img class="card-img-top" src="{{ asset('uploads/'.$row->gambar_review)}}" alt="Thumbnail">
                <div class="card-body">
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
        @endforeach

        @foreach ($news as $row)
        <div class="col-md-4 mt-3">
            <div class="card">
                <img class="card-img-top" src="{{ asset('uploads/'.$row->gambar_news)}}" alt="Thumbnail">
                <div class="card-body">
                  <h5 class="card-title">
                      <a href=" {{ route('detail-news', $row->slug) }} ">
                        {{ $row->judul }}
                      </a>
                  </h5>
                  {{-- <p class="card-text">{!! $row->body !!}</p> --}}
                </div>
                {{-- <ul class="list-group list-group-flush">
                  <li class="list-group-item">Cras justo odio</li>
                  <li class="list-group-item">Dapibus ac facilisis in</li>
                  <li class="list-group-item">Vestibulum at eros</li>
                </ul> --}}
                <div class="card-body">
                  <a href="#" class="card-link">{{ $row->user->name }}</a>
                </div>
            </div>
        </div>
        @endforeach
    </div>

</div>
@endsection
