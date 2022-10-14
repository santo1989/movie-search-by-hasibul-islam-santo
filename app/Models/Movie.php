<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    use HasFactory;
    protected $fillable = [
        'Title',
        'Year',    
        'Summary',
        'Short_Summary',
        'Genres',    
        'IMDBID',    
        'Runtime',    
        'YouTube_Trailer',    
        'Rating',    
        'Movie_Poster',    
        'Director',    
        'Writers',    
        'Cast'
    ];
}
