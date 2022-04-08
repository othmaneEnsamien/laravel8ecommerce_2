<?php

namespace App\Http\Livewire;

use Cart;
use App\Models\Product;
use Livewire\Component;
use App\Models\Categoryy;
use App\Models\Subcategory;
use Livewire\WithPagination;

class CategoryComponent extends Component
{
    use WithPagination;
    public $sorting;
    public $pagesize;
    public $min_price;
    public $max_price;

    public $scategory_slug;
    public function mount($category_slug, $scategory_slug = null)
    {
        $this->min_price = 1;
        $this->max_price = 200;
        $this->sorting = "default";
        $this->pagesize = "12";
        $this->category_slug = $category_slug;
        $this->scategory_slug = $scategory_slug;
    }

    public function store($product_id, $product_name, $product_price)
    {
        Cart::instance('cart')->add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');
        session()->flash('success_message', 'Item added in cart');
        return redirect()->route('product.cart');
    }

    public function addtowishlist($product_id, $product_name, $product_price)
    {
        Cart::instance('wishlist')->add($product_id, $product_name, 1, $product_price)->associate('App\Models\Product');
        $this->emitTo('wishlist-count-component', 'refreshComponent');
    }

    public function render()
    {
        $category_id = null;
        $category_name = "";
        $filter = "";
        if ($this->scategory_slug) {
            $scategory = Subcategory::where('slug', $this->scategory_slug)->first();
            $category_id = $scategory->id;
            $category_name = $scategory->name;
            $filter = "sub";
        } else {
            $category = Categoryy::where('slug', $this->category_slug)->first();
            $category_id = $category->id;
            $category_name = $category->name;
            $filter = "";
        }






        if ($this->sorting == 'date') {
            $productss = Product::whereBetween('regular_price', [$this->min_price, $this->max_price])->where($filter . 'category_id', $category_id)->orderBy('created_at', 'DESC')->paginate($this->pagesize);
        } else if ($this->sorting == 'price') {
            $productss = Product::whereBetween('regular_price', [$this->min_price, $this->max_price])->where($filter . 'category_id', $category_id)->orderBy('regular_price', 'ASC')->paginate($this->pagesize);
        } else if ($this->sorting == 'price-desc') {
            $productss = Product::whereBetween('regular_price', [$this->min_price, $this->max_price])->where($filter . 'category_id', $category_id)->orderBy('regular_price', 'DESC')->paginate($this->pagesize);
        } else {
            $productss = Product::whereBetween('regular_price', [$this->min_price, $this->max_price])->where($filter . 'category_id', $category_id)->paginate($this->pagesize);
        }
        $popular_products = Product::inRandomOrder()->limit(4)->get();
        $categories = Categoryy::All();
        return view('livewire.category-component', compact('productss', 'categories', 'category_name', 'popular_products'))->layout("layouts.base");
    }
}
