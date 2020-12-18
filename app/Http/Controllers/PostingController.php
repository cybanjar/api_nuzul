<?php

namespace App\Http\Controllers;

use App\Posting;

use Illuminate\Http\Request;

class PostingController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index() {
        $posting = Posting::all();
        return response()->json($posting);
    }

    public function show($id)
    {
        $posting = Posting::find($id);
        return response()->json($posting);
    }

   public function create(Request $request) 
   {
       $this->validate($request, [
        'nama' => 'required|string',
        'harga' => 'required|integer',
        'deskripsi' => 'required|string',
        'kondisi' => 'in:baru,bekas',
        'lokasi' => 'required|string',
        'kategori' => 'required|in:kendaraan,elektronik,kuliner,fashion'
       ]);

    $data = $request->all();
    $posting = Posting::create($data);

    return response()->json($posting);
   }

//    public function update(Request $request, $id)
//    {
//         $surah = Surah::find($id);
//         if(!$surah) {
//             return response()->json(['message' => 'Surah not found!'], 404);
//         }

//         $this->validate($request, [
//             'surat' => 'string',
//             'ayah' => 'string',
//             'because' => 'string',
//             'index' => 'string',
//             'sanad' => 'string',
//             'isnad' => 'string'
//        ]);
//         $data = $request->all();

//         $surah->fill($data);

//         $surah->save();
//         return response()->json($surah);
//    }

//    public function destroy($id) {
//        $surah = Surah::find($id);
//        if(!$surah) {
//             return response()->json(['message' => 'Surah not found!'], 404);
//         }

//         $surah->delete();
//         return response()->json(['message' => 'Surah has been deleted!']);
//    }
}
