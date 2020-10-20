<?php

namespace App\Http\Controllers;

use App\Surah;

use Illuminate\Http\Request;

class SurahController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index() {
        $surah = Surah::all();
        return response()->json($surah);
    }

    public function show($id)
    {
        $surah = Surah::find($id);
        return response()->json($surah);
    }

   public function create(Request $request) 
   {
       $this->validate($request, [
        'surat' => 'required|string',
        'ayah' => 'required|string',
        'because' => 'required|string',
        'index' => 'string',
        'sanad' => 'required|string',
        'isnad' => 'string'
       ]);

    $data = $request->all();
    $surah =Surah::create($data);

    return response()->json($surah);
   }

   public function update(Request $request, $id)
   {
        $surah = Surah::find($id);
        if(!$surah) {
            return response()->json(['message' => 'Surah not found!'], 404);
        }

        $this->validate($request, [
            'surat' => 'string',
            'ayah' => 'string',
            'because' => 'string',
            'index' => 'string',
            'sanad' => 'string',
            'isnad' => 'string'
       ]);
        $data = $request->all();

        $surah->fill($data);

        $surah->save();
        return response()->json($surah);
   }

   public function destroy($id) {
       $surah = Surah::find($id);
       if(!$surah) {
            return response()->json(['message' => 'Surah not found!'], 404);
        }

        $surah->delete();
        return response()->json(['message' => 'Surah has been deleted!']);
   }
}
