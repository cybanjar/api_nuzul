<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Surah extends Model
{   
    protected $table = 'surah';

    protected $fillable = [
        'surat', 'ayah', 'because', 'index', 'sanad', 'isnad' 
    ];
}