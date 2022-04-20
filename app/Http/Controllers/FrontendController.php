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
        $review = Review::all();
        $slide = Slide::all();
        $news = News::all();
    return view('front.home', [
            'genre' => $genre,
            'review' => $review,
            'slide' => $slide,
            'news' => $news,
        ]);
    }

    public function detail($slug){

        $genre = Genre::all();
        $review = Review::where('slug', $slug)->first();

        return view('front.review.detail-review',[
            'review' => $review,
            'genre' => $genre
        ]);
    }

    public function listreview(){

        $genre = Genre::all();
        $review = Review::all();

        return view('front.review.home-review',[
            'review' => $review,
            'genre' => $genre
        ]);
    }
    public function listnews(){


        $news = News::all();

        return view('front.news.home-news',[
            'news' => $news,
        ]);
    }
}
