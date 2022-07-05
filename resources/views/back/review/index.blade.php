@extends('layouts.default')

@section('content')

<div class="panel-header bg-primary-gradient">
	<div class="page-inner py-5">
		<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">

		</div>
	</div>
</div>
<div class="page-inner mt--5">
	<div class="row">
		<div class="col-md-12">
			<div class="card full-height">
				<div class="card-header">
					<div class="card-head-row">
                    <div class="card-title"><h1 class="text-dark">Review</h1></div>
                        <a href="{{ route('review.create') }}" class="btn btn-primary btn-sm ml-auto">
                            <i class="fas fa-plus"></i> Tambah Review
                        </a>
					</div>
				</div>
				<div class="card-body">
                    @if(Session::has('success'))
                        <div class="alert alert-primary">
                            {{ Session('success') }}
                        </div>
                    @endif
					<div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Judul</th>
                                    <th>Slug</th>
                                    <th>Genre</th>
                                    <th>Author</th>
                                    <td>Gambar</td>
                                    <td>Rating</td>
                                    {{-- <th>Status</th> --}}
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($review as $row)
                                <tr>
                                    <td>{{ $row->id }}</td>
                                    <td>{{ $row->judul }}</td>
                                    <td>{{ $row->slug }}</td>
                                    <td>{{ $row->genre->nama_genre }}</td>
                                    <td>{{ $row->user->name }}</td>
                                    <td>
                                        <img src="{{ asset('uploads/'.$row->gambar_review)}}" width="100">
                                    </td>
                                    <td>{{ $row->rating}}</td>
                                    {{-- <td>
                                        @if ($row->is_active == '1')
                                        Published
                                        @else
                                        Draft
                                        @endif
                                    </td> --}}
                                    <td>
                                        <a href="{{ route('review.edit', $row->id) }}" class="btn btn-warning btn-sm"><i class="fas fa-pen"></i></a>

                                        <form action="{{ route('review.destroy', $row->id) }}" method="post" class='d-inline'>
                                            @csrf
                                            @method('delete')
                                            <button class="btn btn-danger btn-sm">
                                                <i class="fa fa-trash"></i>
                                            </button>

                                        </form>
                                    </td>
                                </tr>
                                @empty
                                <tr>
                                    <td colspan="9" class="text-center">Data Masih Kosong</td>
                                </tr>
                                @endforelse

                            </tbody>
                        </table>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>
@endsection
