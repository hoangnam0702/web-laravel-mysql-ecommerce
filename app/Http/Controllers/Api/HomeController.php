<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Menu;
use App\Models\Product;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $cateGoryList = Menu::select('name', 'image as icon')->get();
        $hotList = Product::select('id', 'price_sale', 'name', 'thumb')->get();
        return response()->json(['cateGoryList' => $cateGoryList, 'hotList' => $hotList]);
    }

    public function show($id)
    {
        $product = Product::find($id);
        return response()->json($product);
    }
}
