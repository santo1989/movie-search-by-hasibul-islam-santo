<?php

namespace App\Http\Controllers;

use App\Models\Movie;
use Illuminate\Http\Request;

class MovieController extends Controller
{
    public function index()
    {
        return view('welcome');
    }
    public function search(Request $request)
    {
        $search = $request->get('search');

        //ajax request will return json data
        if ($request->ajax()) {
            $data = Movie::where('Year', 'LIKE', "%{$search}%")
                ->get();
            return response()->json($data);
        }
    }
}


    

