<?php

namespace App\Http\Controllers;

use App\Profile;

use Illuminate\Http\Request;

class ProfileController extends Controller
{
   public function create(Request $request) 
   {      
    $data = $request->all();
    $profile =Profile::create($data);

    return response()->json($profile);
   }

   
}
