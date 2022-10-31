<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Order;
use App\Models\Product;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;

use function PHPUnit\Framework\isEmpty;

class CheckoutController extends Controller
{
    public function checkout()
    {
        // Tinh tong tat ca hang
        $cart = Cart::where('customer_id', Config::get('constants.CUSTOMER_TEST_ID'))->get();
        if ($cart->isEmpty()) {
            // return response()->json($cart);
            return response()->json(['message' => 'Your Cart did not have anything!']);
        }
        $total = 0;
        foreach ($cart as $value) {
            $total += $value->price * $value->pty;
        }

        // Insert from Cart to Orders
        foreach ($cart as $value) {
            Order::insert([
                'customer_id' => Config::get('constants.CUSTOMER_TEST_ID'),
                'product_id' => $value->product_id,
                'quantity' => $value->pty,
                'product_total' => $value->price * $value->pty,
                'total' => $total,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);
        }

        // Clear all cart after move Cart to Orders
        CartController::clearAllCart();

        // return response()->json($cart);
        return response()->json(['message' => 'Your cart has checkout successfully!']);
    }

    public function buyNow($id)
    {
        $product = Product::find($id);
        return response()->json($product);
    }

    public function buyNowCheckout($id)
    {
        $product = Product::find($id);
        // dd($product);
        Order::insert([
            'customer_id' => Config::get('constants.CUSTOMER_TEST_ID'),
            'product_id' => $id,
            'quantity' => 1,
            'product_total' => $product->price,
            'total' => $product->price,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now(),
        ]);

        return response()->json(['message' => 'Your purchase has checkout successfully!']);
    }
}
