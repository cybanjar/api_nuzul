<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Posting extends Model
{   
    protected $table = 'posting';

    protected $fillable = [
        'nama', 'harga', 'deskripsi', 'kondisi', 'lokasi', 'kategori' 
    ];
}