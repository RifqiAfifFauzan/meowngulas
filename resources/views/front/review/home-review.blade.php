@extends('front.layouts.frontend')

@section('content')
<div class="container">
    <h1 class="mt-3 text-center text-light">REVIEWS</h1>
    <p class="text-center text-light">Mari lihat ulasan sebelum kamu menonton!</p>
</div>
<div class="container">
    <div class="row">

        @foreach ($review as $row)
        <div class="col-md-4 mt-3">
            <div class="card">
                <img class="card-img-top" src="{{ asset('uploads/'.$row->gambar_review)}}" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title">
                      <a href=" {{ route('detail-review', $row->slug) }} ">
                        {{ $row->judul }}
                      </a 25px;>
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
    </div>
    {{ $review->links() }}
</div>
@endsection

