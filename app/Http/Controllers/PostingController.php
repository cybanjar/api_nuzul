<?php

namespace App\Http\Controllers;

use App\Models\Posting;

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

   public function update(Request $request, $id)
   {
        $posting = Posting::find($id);
        if(!$posting) {
            return response()->json(['message' => 'Post not found!'], 404);
        }

        $this->validate($request, [
            'nama' => 'required',
            'harga' => 'required',
            'deskripsi' => 'required',
            'lokasi' => 'required',
            'kategori' => 'required',
       ]);
        $data = $request->all();

        $posting->fill($data);

        $posting->save();
        return response()->json($posting);
   }

   public function destroy($id) {
       $posting = Posting::find($id);
       if(!$posting) {
            return response()->json(['message' => 'Surah not found!'], 404);
        }

        $posting->delete();
        return response()->json(['message' => 'Surah has been deleted!']);
   }
}
