
@extends('front.layouts.frontend')
@include('front.includes.slide')
@section('judul')
<h1>Latest Review</h1>
@endsection
@section('content')

    @forelse ($review as $row)
    <div class="col-md-4 mt-3">
        <div class="card">
            <img class="card-img-top" src="{{ asset('uploads/'.$row->gambar_review)}}" alt="Card image cap">
            <div class="card-body">
              <h5 class="card-title">
                  <a href=" {{ route('detail-review', $row->slug) }} ">
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
              <a href="#" class="card-link">{{ $row->genre->nama_genre }}</a>
            </div>
          </div>
    </div>
    @empty
    <p>Data Masih Kosong</p>
    @endforelse


@endsection
