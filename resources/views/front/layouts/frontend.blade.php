<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('back/css/fonts.min.css') }}">
    <link rel="stylesheet" href="{{ asset('back/css/styles.css') }}">
    <link rel="icon" href="img/meowngulas-icon.png" type="image" sizes="16x16">
    <link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>


    <title>Meowngulas</title>

  </head>

  <body>
    @include('front.includes.header')
    <div class="container">
        <div class="row">
            @yield('content')
        </div>
    </div>

    @include('front.includes.footer')
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    @include('front.includes.js')
  </body>

</html>
