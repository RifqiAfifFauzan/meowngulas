<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\News;
use Illuminate\Support\Facades\Auth;
use RealRashid\SweetAlert\Facades\Alert;
use Storage;


class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $news = News::all();
        return view('back.news.index', [
            'news' => $news
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('back.news.create');
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
        $data['gambar_news']=$request->file('gambar_news')->store('news');

        News::create($data);
        Alert::success('Berhasil', 'Data Tersimpan');
        return redirect()->route('news.index');
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
        $news = News::find($id);

        return view('back.news.edit', [
            'news' => $news
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
        if(empty($request->file('gambar_news'))) {
            $news = News::find($id);
            $news->update([
                'judul' => $request->judul,
                'body' => $request->body,
                'slug' => Str::slug($request->judul),
                'user_id' => Auth::id(),
        ]);
        Alert::info('Terupdate', 'Data Berhasil Diupdate');
        return redirect()->route('news.index');

    } else {
        $news = News::find($id);
        Storage::delete($news->gambar_news);
        $news->update([
            'judul' => $request->judul,
            'body' => $request->body,
            'slug' => Str::slug($request->judul),
            'genre_id' => $request->genre_id,
            'user_id' => Auth::id(),
            'gambar_news' => $request->file('gambar_news')->store('news'),
    ]);
    Alert::info('Terupdate', 'Data Berhasil Diupdate');
    return redirect()->route('news.index');
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
        $news = News::find($id);

        Storage::delete($news->gambar_news);
        $news->delete();
        Alert::success('Berhasil', 'Data Tehapus');
        return redirect()->route('news.index');
    }
}
