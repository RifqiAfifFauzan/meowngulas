<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Genre;
use App\Models\Review;
use App\Models\Slide;
use App\Models\News;

class FrontendController extends Controller
{
    public function index()
    {
        $genre = Genre::all();
        $review = Review::orderBy('created_at', 'DESC')->get();
        $slide = Slide::orderBy('created_at', 'DESC')->get();
        $news = News::orderBy('created_at', 'DESC')->get();
    return view('front.home', [
            'genre' => $genre,
            'review' => $review,
            'slide' => $slide,
            'news' => $news,
        ]);
    }

    public function detailreview($slug){

        $genre = Genre::all();
        $review = Review::where('slug', $slug)->first();

        return view('front.review.detail-review',[
            'review' => $review,
            'genre' => $genre
        ]);
    }

    public function listreview(){

        $genre = Genre::all();
        $review = Review::paginate(6);

        return view('front.review.home-review',[
            'review' => $review,
            'genre' => $genre
        ]);
    }

    public function detailnews($slug){

        $genre = Genre::all();
        $news = news::where('slug', $slug)->first();

        return view('front.news.detail-news',[
            'news' => $news,
            'genre'=> $genre,
        ]);
    }


    public function listnews(){

        $news = News::paginate(6);


        return view('front.news.home-news',[
            'news' => $news,
        ]);
    }

    public function listgenre(){

        $genre = Genre::all();

        return view('front.genre.home-genre',[
            'genre'=> $genre,
        ]);
    }

    public function showReviewByGenre($slug)
    {
        $review = Review::whereHas('genre',function($query) use($slug) {
            return $query->where('slug', $slug);
        })->get();

        $genre = Genre::where('slug',$slug)->first();

        return view('front.genre.review-genre',[
            'review' => $review,
            'genre' => $genre,
        ]);
    }
    // public function listgenre($nama_genre){

    //     $genre = Genre::all();
    //     $review = Review::all();

    //     return view('front.genre.genres',[
    //         'review' => $review,
    //         'genre'=> $genre,
    //     ]);
    // }
    // public function listgenre(Genre $genre){
    //     return view('front.genre.genres')->with('genre', $genre)->with('review', $genre->review()->simplePagination(3));
    // }

    public function search(Request $request)
    {
        if($request->has('search')){
            $review = Review::where('judul', 'like', '%' .$request->search. '%')->get();
            $news = News::where('judul', 'like', '%' .$request->search. '%')->get();
        }
        else{
            $review = Review::all();
            $news = News::all();
        }

        return view ('front.cari.search', [
            'review' => $review,
            'news' => $news
        ]);
    }
}
