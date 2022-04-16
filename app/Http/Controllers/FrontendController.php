<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Genre;
use App\Models\Review;
use App\Models\Slide;

class FrontendController extends Controller
{
    public function index()
    {
        $genre = Genre::all();
        $review = Review::all();
        $slide = Slide::all();
    return view('front.home', [
            'genre' => $genre,
            'review' => $review,
            'slide' => $slide
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
}
