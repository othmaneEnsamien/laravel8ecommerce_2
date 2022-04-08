<?php

namespace App\Http\Livewire;

use App\Models\Sale;
use App\Models\Product;
use Livewire\Component;
use App\Models\Categoryy;
use App\Models\HomeCategory;
use App\Models\HomeSlider;
use Illuminate\Support\Facades\Auth;
use Cart;

class HomeComponent extends Component
{
    public function render()
    {
        $sliders = HomeSlider::where('status', 1)->get();
        $lproducts = Product::orderBy('created_At', 'DESC')->get()->take(8);
        $category = HomeCategory::find(1);
        $cats = explode(',', $category->select_categories);
        $categories = Categoryy::whereIn('id', $cats)->get();
        $no_of_products = $category->no_of_products;
        $onsaleproducts = Product::where('sale_price', '>', 0)->inRandomOrder()->get();
        $sale = Sale::find(1);
        if (Auth::Check()) {
            Cart::instance('cart')->restore(Auth::user()->email);
            Cart::instance('wishlist')->restore(Auth::user()->email);
        }
        return view('livewire.home-component', compact('lproducts', 'sliders', 'categories', 'no_of_products', 'onsaleproducts', 'sale'))->layout("layouts.base");
    }
}
