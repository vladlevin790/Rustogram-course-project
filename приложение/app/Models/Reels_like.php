<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reels_like extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'reels_id',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function reels()
    {
        return $this->belongsTo(Reels::class);
    }
}
