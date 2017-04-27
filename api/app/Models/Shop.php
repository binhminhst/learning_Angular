<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 3/16/2017
 * Time: 10:02 AM
 */


namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Shop extends Model
{
    protected $table = 'shop';

    public function func_select($request){


        return $shop = Shop::where('auth_name', '=', $request)->get();

    } // func_select

    public function func_select_fab_ric($request, $fab_ric){


         return $shop = Shop::where('auth_name', '=', $request)
                            ->where('fab_ric', '=', $fab_ric)->get();

    } // func_select_fab_ric

    public function func_select_type($request, $type){


        return $shop = Shop::where('auth_name', '=', $request)
                            ->where('type', '=', $type)->get();

    } // func_select_type

    public function func_select_fab_ric_and_type($request, $fab_ric, $type){

        return $shop = Shop::where('auth_name', '=', $request)
                            ->where('fab_ric', '=', $fab_ric)
                            ->where('type', '=', $type)->get();

    } // func_select_fab_ric_and_type
}
