<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    use HasFactory;

    protected $table= 'review';
    //Membatasi field apa saja yang bisa diisi
    protected $fillable=[
        'judul','slug','genre_id','user_id','gambar_review',
        'is_active','views', 'body', 'rating'
    ];

    protected $hidden=[];

    /**
     * Get the user that owns the review
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function genre()
    {
        return $this->belongsTo(Genre::class, 'genre_id', 'id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
