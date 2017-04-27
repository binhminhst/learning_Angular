<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use App\Http\Controllers\Controller;
use App\Models\Shop;
use Illuminate\Support\Facades\Hash;
use JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;

class ShopController extends  BaseController{

    public function Show(Request $request){
            $shop = new Shop() ;

        if (! $infoUser = JWTAuth::parseToken()->authenticate()) {
            return response()->json(['User not found'], 404);
        }

        $infoShop = $shop->func_select($infoUser['auth_name']);
        return response()->json($infoShop);

        //return view('showData')->with('data_shop', ['query_shop' => $data] );
    } // Show

    public function Show_fab_ric(Request $request, $fab_ric){
        $shop = new Shop() ;

        if (! $infoUser = JWTAuth::parseToken()->authenticate()) {
            return response()->json(['User not found'], 404);
        }

        $infoShop = $shop->func_select_fab_ric($infoUser['auth_name'], $fab_ric);
        return response()->json($infoShop);

    } // Show_fab_ric

    public function Show_type(Request $request, $type){
        $shop = new Shop() ;

        if (! $infoUser = JWTAuth::parseToken()->authenticate()) {
            return response()->json(['User not found'], 404);
        }

        $infoShop = $shop->func_select_type($infoUser['auth_name'], $type);
        return response()->json($infoShop);

    } // Show_type

    public function Show_fab_ric_and_type(Request $request, $fab_ric, $type){
        $shop = new Shop() ;

        if (! $infoUser = JWTAuth::parseToken()->authenticate()) {
            return response()->json(['User not found'], 404);
        }

        $infoShop = $shop->func_select_fab_ric_and_type($infoUser['auth_name'], $fab_ric, $type);
        return response()->json($infoShop);

    } // Show_type
}
