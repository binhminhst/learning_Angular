<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
//use App\Http\Controllers\Controller;
use App\Models\Product;
//use Illuminate\Support\Facades\Hash;

class ProductController extends  BaseController{

    public function preInsert(){
      //  echo "Test:". Hash::make("123546"); die;
        return view('product_preInsert');
    } // preInsert


    public function insert(Request $request){
        $insert_product = new Product() ;
        $insert = $insert_product->func_insert($request->input('inp_name_product'), $request->input('inp_price_product'));
        if($insert == 0) return redirect('product');
    } // insert

    public function preEdit(Request $request){
        $preEdit_product = new Product() ;
        $preEdit = $preEdit_product->func_preEdit($request->pro);
        return view('product_preEdit')->with('data_product', ['query_product' => $preEdit, 'id_product' => $request->pro] );
    } // edit

    public function edit(Request $request){
        $edit_product = new Product() ;
        $edit = $edit_product->func_edit($request->input('inp_product'), $request->input('inp_name_product'), $request->input('inp_price_product'));

        if($edit == 0) return redirect('product');

    } // update

    public function preDel(Request $request){
           $preDel_product = new Product() ;
           $preDel = $preDel_product->func_preDel($request->pro);
           return view('product_preDel')->with('data_product', ['query_product' => $preDel, 'id_product' => $request->pro] );
    } // preDel

    public function del(Request $request){
            $del_product = new Product() ;
            $del = $del_product->func_del($request->input('inp_product'));
            if($del == 0) return redirect('product');
    } //  del

}
