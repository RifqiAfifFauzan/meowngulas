
{{-- <nav class="navbar navbar-expand-lg navbar-light shadow-sm p-3 mb-3 bg-white rounded"> --}}
<nav class="navbar navbar-expand-lg navbar-dark shadow-sm p-3 mb-3">

    <div class="container">
        <a class="navbar-brand" href="/"><img src="{{ asset('back/img/meowngulas-navbar.png')}}" alt="logo"/></a>
    <button class="navbar-toggler dark" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
        </li>
        {{-- <li class="nav-item dropdown active">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Genre
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            @foreach ($genre as $gen)
                <a class="dropdown-item" href="{{ route('genres', $gen->slug) }}">{{ $gen->nama_genre }}</a>
            @endforeach
          </div>
        </li> --}}
        <li class="nav-item active">
            <a class="nav-link" href="{{ route('home-genre') }}">Genres<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="{{ route('home-review') }}">Reviews<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item active">
            <a class="nav-link" href="{{ route('home-news') }}">News<span class="sr-only">(current)</span></a>
        </li>

      </ul>

      <ul class="navbar-nav mr-auto">

      </ul>
      <form action="/search" method="GET" class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search" aria-label="Search">
        <button class="btn" type="submit">
            <i class="fas fa-search"></i>
        </button>
      </form>
    </div>
    </div>
  </nav>
