<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 3/16/2017
 * Time: 10:02 AM
 */


namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserInfo extends Model
{
    protected $table = 'users';

    public function func_insert($name, $price){
        $insert_product = new Product ;
        $insert_product->name_product = addslashes($name) ;
        $insert_product->price_product = $price ;
        $insert_product->pic_product = '' ;
        $insert_product->save();
        if($insert_product) return 0;
        else                return 1;

    } // insert

    public function func_preEdit($request){

        return $product = Product::where('id', '=', $request)->get();

    } // func_preEdit

    public function func_edit($id, $name, $price){
        $update_product = Product::find($id);
        $update_product->name_product = addslashes($name) ;
        $update_product->price_product = $price ;
        $update_product->save();
        if($update_product) return 0;
        else                return 1;
    } // func_edit

    public function func_preDel($request){
        return $preDel_product = Product::where('id', '=', $request)->get();
    } // func_preDel

    public function func_del($request){
        $del_product = Product::where('id', '=', $request)->delete();
        if($del_product) return 0;
        else             return 1;
    } // func_del

}
