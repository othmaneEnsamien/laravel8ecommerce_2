<?php

namespace App\Http\Livewire;

namespace App\Http\Livewire;

use App\Models\Sale;
use App\Models\Product;
use Livewire\Component;
use App\Models\Categoryy;
use App\Models\HomeCategory;
use App\Models\HomeSlider;
use Illuminate\Support\Facades\Auth;
use Livewire\WithPagination;
use Cart;

class ProductSoldeComponent extends Component
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
        return redirect()->route('product.solde');
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
            $onsaleproducts = Product::where('sale_price', '>', 0)->whereBetween('sale_price', [$this->min_price, $this->max_price])->orderBy('created_at', 'DESC')->paginate(9);
        } else if ($this->sorting == 'price') {
            $onsaleproducts = Product::where('sale_price', '>', 0)->whereBetween('sale_price', [$this->min_price, $this->max_price])->orderBy('sale_price', 'ASC')->paginate($this->pagesize);
        } else if ($this->sorting == 'price-desc') {
            $onsaleproducts = Product::where('sale_price', '>', 0)->whereBetween('sale_price', [$this->min_price, $this->max_price])->orderBy('sale_price', 'DESC')->paginate($this->pagesize);
        } else {
            $onsaleproducts = Product::where('sale_price', '>', 0)->whereBetween('sale_price', [$this->min_price, $this->max_price])->paginate($this->pagesize);
        }

        $categories = Categoryy::All();
        $sale = Sale::find(1);
        $popular_products = Product::inRandomOrder()->limit(4)->get();

        if (Auth::check()) {
            Cart::instance('cart')->store(Auth::user()->email);
            Cart::instance('wishlist')->store(Auth::user()->email);
        }
        return view('livewire.product-solde-component', compact('popular_products',  'categories',  'onsaleproducts', 'sale'))->layout('layouts.base');
    }
}
