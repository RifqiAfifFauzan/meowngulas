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
						<div class="card-title">Edit news {{ $news->judul }}</div>
                        <a href="{{ route('news.index') }}" class="btn btn-warning btn-sm ml-auto">Back</a>
					</div>
				</div>
				<div class="card-body">
                    <form method="post" action="{{ route('news.update', $news->id) }}" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <label for="judul">Judul news</label>
                            <input type="text" name="judul" class="form-control" id="text" value="{{ $news->judul }}">
                        </div>
                        <div class="form-group">
                            <label for="body">Isi</label>
                            <textarea name="body" class="form-control" id="editor1">{{ $news->body }}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="gambar">Gambar news</label>
                            <input type="file" name="gambar_news" class="form-control"><br>
                            <label for="gambar">Gambar Saat Ini</label><br>
                            <img src="{{ asset('uploads/'.$news->gambar_news)}}" width="100">
                        </div>
                        {{-- <div class="form-group">
                            <label for="status">Status</label>
                            <select name="is_active" class="form-control">
                                <option value="1" {{ $news->is_active == '1' ? 'selected' : ''}}>Publish</option>
                                <option value="0" {{ $news->is_active == '0' ? 'selected' : ''}}>Draft</option>
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
