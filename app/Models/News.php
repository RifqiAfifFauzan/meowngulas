<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use HasFactory;

    protected $table= 'news';

    protected $fillable=[
        'judul','slug','user_id','gambar_news',
        'is_active','views', 'body'
    ];

    protected $hidden=[];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
