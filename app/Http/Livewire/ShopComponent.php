<?php

namespace App\Http\Livewire;

use Cart;
use App\Models\Product;
use Livewire\Component;
use App\Models\Categoryy;
use App\Models\Subcategory;
use Livewire\WithPagination;
use Illuminate\Support\Facades\Auth;

class ShopComponent extends Component
{
    use WithPagination;
    public $sorting;
    public $pagesize;

    public $min_price;
    public $max_price;
    public function mount()
    {
        $this->sorting = "default";
        $this->pagesize = "12";

        $this->min_price = 1;
        $this->max_price = 200;
    }

    public function store($product_id, $product_name, $product_price)
    {
        Cart::instance('cart')->add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');
        session()->flash('success_message', 'Item added in cart');
        return redirect()->route('shop');
    }

    public function addtowishlist($product_id, $product_name, $product_price)
    {
        Cart::instance('wishlist')->add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');
        $this->emitTo('wishlist-count-component', 'refreshComponent');
    }

    public function removefromwishlist($product_id)
    {
        foreach (Cart::instance('wishlist')->content() as $witem) {
            if ($witem->id == $product_id) {
                Cart::instance('wishlist')->remove($witem->rowId);
                $this->emitTo('wishlist-count-component', 'refreshComponent');
            }
        }
    }

    public function render()
    {
        if ($this->sorting == 'date') {
            $productss = Product::whereBetween('regular_price', [$this->min_price, $this->max_price])->orderBy('created_at', 'DESC')->paginate($this->pagesize);
        } else if ($this->sorting == 'price') {
            $productss = Product::whereBetween('regular_price', [$this->min_price, $this->max_price])->orderBy('regular_price', 'ASC')->paginate($this->pagesize);
        } else if ($this->sorting == 'price-desc') {
            $productss = Product::whereBetween('regular_price', [$this->min_price, $this->max_price])->orderBy('regular_price', 'DESC')->paginate($this->pagesize);
        } else {
            $productss = Product::whereBetween('regular_price', [$this->min_price, $this->max_price])->paginate($this->pagesize);
        }

        if (Auth::check()) {
            Cart::instance('cart')->store(Auth::user()->email);
            Cart::instance('wishlist')->store(Auth::user()->email);
        }

        $categories = Categoryy::All();
        $popular_products = Product::inRandomOrder()->limit(4)->get();


        return view('livewire.shop-component', compact('productss', 'categories', 'popular_products'))->layout("layouts.base");
    }
}
