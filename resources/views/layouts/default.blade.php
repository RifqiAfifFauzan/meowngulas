
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<title>Meowngulas</title>
	<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
	<link rel="icon" href="{{ asset('back/img/meowngulas-icon.png')}}" type="image/x-icon"/>


	<!-- Fonts and icons -->
	<script src="{{ asset('back/js/plugin/webfont/webfont.min.js')}}"></script>
	<script>
		WebFont.load({
			google: {"families":["Lato:300,400,700,900"]},
			custom: {"families":["Flaticon", "Font Awesome 5 Solid", "Font Awesome 5 Regular", "Font Awesome 5 Brands", "simple-line-icons"], urls: ['{{ asset('back/css/fonts.min.css') }}']},
			active: function() {
				sessionStorage.fonts = true;
			}
		});
	</script>

	<!-- CSS Files -->
	<link rel="stylesheet" href="{{ asset('back/css/bootstrap.min.css') }}">
	<link rel="stylesheet" href="{{ asset('back/css/styles.css') }}">
	<link rel="stylesheet" href="{{ asset('back/css/atlantis.min.css') }}">
	<link rel="stylesheet" href="{{ asset('back/css/dashboard.css') }}">

</head>
<body>
	<div class="wrapper">
@include('includes.header')
		<!-- Sidebar -->
        @include('includes.sidebar')
		<!-- End Sidebar -->

		<div class="main-panel">
			<div class="content">
                @yield('content')
			</div>
            {{--FOOTER--}}
            @include('includes.footer')
		</div>


	</div>
	<!--   Core JS Files   -->
    @include('includes.js')
    @include('sweetalert::alert')

</body>
</html>
