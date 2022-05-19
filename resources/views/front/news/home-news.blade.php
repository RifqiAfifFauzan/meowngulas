@extends('front.layouts.frontend')

@section('content')
<div class="container">
    <h1 class="mt-3 text-center">News</h1>
    <p class="text-center">Berita-berita tentang perfilman ada di sini!</p>
</div>
<div class="container">
    <div class="row">
        @foreach ($news as $row)
        <div class="col-md-4 mt-3">
            <div class="card">
                <img class="card-img-top" src="{{ asset('uploads/'.$row->gambar_news)}}" alt="Card image cap">
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
    {{ $news->links() }}
</div>
@endsection
