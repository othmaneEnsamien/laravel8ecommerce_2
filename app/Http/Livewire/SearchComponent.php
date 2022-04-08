<?php

namespace App\Http\Livewire;

use Cart;
use App\Models\Product;
use Livewire\Component;
use App\Models\Categoryy;
use App\Models\Subcategory;
use Livewire\WithPagination;

class SearchComponent extends Component
{
    use WithPagination;
    public $sorting;
    public $pagesize;
    public $search;
    public $product_cat;
    public $product_cat_id;
    public $min_price;
    public $max_price;

    public function mount()
    {
        $this->sorting = "default";
        $this->pagesize = "12";

        $this->min_price = 1;
        $this->max_price = 200;
        $this->product_cat = 'All Category';
        $this->fill(request()->only('search', 'product_cat', 'product_cat_id'));
    }

    public function store($product_id, $product_name, $product_price)
    {
        Cart::add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');
        session()->flash('success_message', 'Item added in cart');
        return redirect()->route('product.cart');
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
            $productss = Product::whereBetween('regular_price', [$this->min_price, $this->max_price])->where('name', 'like', '%' . $this->search . '%')->where('category_id', 'like', '%' . $this->product_cat_id . '%')->orderBy('created_at', 'DESC')->paginate($this->pagesize);
        } else if ($this->sorting == 'price') {
            $productss = Product::whereBetween('regular_price', [$this->min_price, $this->max_price])->where('name', 'like', '%' . $this->search . '%')->where('category_id', 'like', '%' . $this->product_cat_id . '%')->paginate($this->pagesize);
        } else if ($this->sorting == 'price-desc') {
            $productss = Product::whereBetween('regular_price', [$this->min_price, $this->max_price])->where('name', 'like', '%' . $this->search . '%')->where('category_id', 'like', '%' . $this->product_cat_id . '%')->paginate($this->pagesize);
        } else {
            $productss = Product::whereBetween('regular_price', [$this->min_price, $this->max_price])->where('name', 'like', '%' . $this->search . '%')->where('category_id', 'like', '%' . $this->product_cat_id . '%')->paginate($this->pagesize);
        }

        $categories = Categoryy::All();
        $popular_products = Product::inRandomOrder()->limit(4)->get();

        return view('livewire.search-component', compact('productss', 'categories', 'popular_products'))->layout("layouts.base");
    }
}
