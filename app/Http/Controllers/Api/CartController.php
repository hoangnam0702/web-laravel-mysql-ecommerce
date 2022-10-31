<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;

class CartController extends Controller
{
    public function cartList()
    {
        // Image, title, description
        $cartItems = Cart::where('customer_id', Config::get('constants.CUSTOMER_TEST_ID'))->get();

        $product = [];
        foreach ($cartItems as $key => $value) {
            // dd($key);
            $product = Product::where('id', $value->product_id)->get();
            // dd($product);
            $cartItems[$key]->thumb = $product[0]->thumb;
            $cartItems[$key]->name = $product[0]->name;
            $cartItems[$key]->description = $product[0]->description;
        }
        // dd($cartItems);
        return response()->json($cartItems);
    }


    public function addToCart(Request $request)
    {
        $hasProduct = Cart::where('product_id', $request->product_id)->get();

        if (isset($hasProduct[0]->id) && $hasProduct[0]->customer_id == Config::get('constants.CUSTOMER_TEST_ID')) {
            // dd(isset($hasProduct[0]->id));
            Cart::where('id', $hasProduct[0]->id)->update(['pty' => $hasProduct[0]->pty + 1]);

            return response()->json(['message' => 'Item Cart is Updated Successfully!']);
        }

        Cart::insert([
            'customer_id' => Config::get('constants.CUSTOMER_TEST_ID'),
            'product_id' => $request->product_id,
            'pty' => $request->quantity,
            'price' => $request->price * $request->quantity,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
        ]);

        // session()->flash('success', 'Product is Added to Cart Successfully !');

        return response()->json(['message' => 'Product is Added to Cart Successfully!']);
    }

    public function updateCart(Request $request)
    {
        $cart = Cart::where('id', $request->id)->update(['pty' => $request->quantity]);

        // session()->flash('success', 'Item Cart is Updated Successfully !');

        return response()->json(['message' => 'Item Cart is Updated Successfully!']);
    }

    public function removeCart($id)
    {
        Cart::where('id', $id)->firstorfail()->delete();
        // session()->flash('success', 'Item Cart Remove Successfully !');

        return response()->json(['message' => 'Item Cart Remove Successfully !']);
    }

    public static function clearAllCart()
    {
        Cart::where('customer_id', Config::get('constants.CUSTOMER_TEST_ID'))->delete();

        return response()->json(['message' => 'Item Cart Clear Successfully !']);
    }
}
