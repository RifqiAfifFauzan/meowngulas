@extends('layouts.default')

@section('content')

<div class="panel-header bg-primary-gradient">
	<div class="page-inner py-5">
		<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
			<div>
				<h2 class="text-white pb-2 fw-bold">Dashboard</h2>
				{{--<h5 class="text-white op-7 mb-2">Free Bootstrap 4 Admin Dashboard</h5>--}}
			</div>
			<div class="ml-md-auto py-2 py-md-0">
				{{-- <a href="#" class="btn btn-white btn-border btn-round mr-2">Manage</a>
				<a href="#" class="btn btn-secondary btn-round">Add Customer</a> --}}
			</div>
		</div>
	</div>
</div>
<div class="page-inner mt--5">
	<div class="row">
		<div class="col-sm-6 col-md-3">
			<div class="card card-stats card-round">
				<div class="card-body">
					<div class="row align-items-center">
						<div class="col-icon">
							<div class="icon-big text-center icon-info bubble-shadow-small">
								<i class="far fa-newspaper"></i>
							</div>
						</div>
						<div class="col col-stats ml-3 ml-sm-0">
							<a href="{{ route('news.index') }}">
                                <div class="numbers">
								    <p class="card-category">News</p>
								    <h4 class="card-title">{{$news}}</h4>

							    </div>
                            </a>
						</div>
					</div>
				</div>
			</div>
		</div>
        <div class="col-sm-6 col-md-3">
			<div class="card card-stats card-round">
				<div class="card-body">
					<div class="row align-items-center">
						<div class="col-icon">
							<div class="icon-big text-center icon-info bubble-shadow-small">
								<i class="far fa-newspaper"></i>
							</div>
						</div>
						<div class="col col-stats ml-3 ml-sm-0">
							<a href="{{ route('review.index') }}">
                                <div class="numbers">
								    <p class="card-category">Review</p>
								    <h4 class="card-title">{{$review}}</h4>
							    </div>
                            </a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="card card-stats card-round">
				<div class="card-body">
					<div class="row align-items-center">
						<div class="col-icon">
							<div class="icon-big text-center icon-success bubble-shadow-small">
								<i class="fas fa-tags"></i>
							</div>
						</div>
						<div class="col col-stats ml-3 ml-sm-0">
                            <a href="{{ route('genre.index') }}">
                                <div class="numbers">
                                    <p class="card-category">Genre</p>
                                    <h4 class="card-title">{{$genre}}</h4>
                                </div>
                            </a>
						</div>
					</div>
				</div>
			</div>
		</div>
        <div class="col-sm-6 col-md-3">
			<div class="card card-stats card-round">
				<div class="card-body">
					<div class="row align-items-center">
						<div class="col-icon">
							<div class="icon-big text-center icon-info bubble-shadow-small">
								<i class="far fa-newspaper"></i>
							</div>
						</div>
						<div class="col col-stats ml-3 ml-sm-0">
                            <a href="{{ route('slide.index') }}">
                                <div class="numbers">
                                    <p class="card-category">Slide Banner</p>
                                    <h4 class="card-title">{{$slide}}</h4>
                                </div>
                            </a>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
@endsection
