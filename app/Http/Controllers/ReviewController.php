<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Review;
use App\Models\Genre;
use Illuminate\Support\Facades\Auth;
use RealRashid\SweetAlert\Facades\Alert;
use Storage;

class reviewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $review= Review::all();
        return view('back.review.index', compact('review'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $genre = Genre::all();
        return view('back.review.create', compact('genre'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'judul'=> 'required|min:4'
        ]);

        $data = $request->all();
        $data['slug'] = Str::slug($request->judul);
        $data['user_id'] = Auth::id();
        $data['views'] = 0;
        $data['gambar_review']=$request->file('gambar_review')->store('review');
        $data['rating'];

        Review::create($data);
        Alert::success('Berhasil', 'Data Tersimpan');
        return redirect()->route('review.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $review = Review::find($id);
        $genre = Genre::all();

        return view('back.review.edit', [
            'review' => $review,
            'genre' => $genre
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // $this->validate($request, [
        //     'judul'=> 'required|min:4'
        // ]);

        if(empty($request->file('gambar_review'))) {
                $review = Review::find($id);
                $review->update([
                    'judul' => $request->judul,
                    'body' => $request->body,
                    'slug' => Str::slug($request->judul),
                    'genre_id' => $request->genre_id,
                    'user_id' => Auth::id(),
                    'rating' => $request->rating,
            ]);
            Alert::info('Terupdate', 'Data Berhasil Diupdate');
            return redirect()->route('review.index');

        } else {
            $review = Review::find($id);
            Storage::delete($review->gambar_review);
            $review->update([
                'judul' => $request->judul,
                'body' => $request->body,
                'slug' => Str::slug($request->judul),
                'genre_id' => $request->genre_id,
                'user_id' => Auth::id(),
                'gambar_review' => $request->file('gambar_review')->store('review'),
                'rating' => $request->rating,
        ]);
        Alert::info('Terupdate', 'Data Berhasil Diupdate');
        return redirect()->route('review.index');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $review = Review::find($id);

        Storage::delete($review->gambar_review);
        $review->delete();
        Alert::success('Berhasil', 'Data Tehapus');
        return redirect()->route('review.index');
    }
}
