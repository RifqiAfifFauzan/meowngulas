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
						<div class="card-title">Edit review {{ $review->judul }}</div>
                        <a href="{{ route('review.index') }}" class="btn btn-warning btn-sm ml-auto">Back</a>
					</div>
				</div>
				<div class="card-body">
                    <form method="post" action="{{ route('review.update', $review->id) }}" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <label for="judul">Judul review</label>
                            <input type="text" name="judul" class="form-control" id="text" value="{{ $review->judul }}">
                        </div>
                        <div class="form-group">
                            <label for="body">Isi</label>
                            <textarea name="body" class="form-control" id="editor1">{{ $review->body }}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="gambar">Gambar review</label>
                            <input type="file" name="gambar_review" class="form-control"><br>
                            <label for="gambar">Gambar Saat Ini</label><br>
                            <img src="{{ asset('uploads/'.$review->gambar_review)}}" width="100">
                        </div>
                        <div class="form-group">
                            <label for="rating">Rating</label>
                            <select name="rating" class="form-control" >
                                <option value="1" {{ $review->rating == '1' ? 'selected' : ''}}>1</option>
                                <option value="2" {{ $review->rating == '2' ? 'selected' : ''}}>2</option>
                                <option value="3" {{ $review->rating == '3' ? 'selected' : ''}}>3</option>
                                <option value="4" {{ $review->rating == '4' ? 'selected' : ''}}>4</option>
                                <option value="5" {{ $review->rating == '5' ? 'selected' : ''}}>5</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="genre">Genre</label>
                            <select name="genre_id" class="form-control">
                                @foreach ($genre as $row)

                                @if ($row->id == $review->genre_id)
                                    <option value="{{ $row->id }}" selected='selected'>{{ $row->nama_genre }}</option>
                                @else
                                    <option value="{{ $row->id }}">{{$row->nama_genre}}</option>
                                @endif
                                @endforeach
                            </select>
                        </div>
                        {{-- <div class="form-group">
                            <label for="status">Status</label>
                            <select name="is_active" class="form-control">
                                <option value="1" {{ $review->is_active == '1' ? 'selected' : ''}}>Publish</option>
                                <option value="0" {{ $review->is_active == '0' ? 'selected' : ''}}>Draft</option>
                            </select>
                        </div> --}}
                        <div class="form-group">
                            <button class="btn btn-primary btn-sm" type="submit">Save</button>
                            <button class="btn btn-danger btn-sm" type="reset">Reset</button>
                        </div>
                    </form>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection
