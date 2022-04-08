<?php

namespace App\Http\Livewire\Admin;

use App\Models\AttributeValue;
use Carbon\Carbon;
use App\Models\Product;
use Livewire\Component;
use App\Models\Categoryy;
use App\Models\ProductAttribute;
use App\Models\Subcategory;
use Illuminate\Support\Str;
use Livewire\WithFileUploads;

class AdminAddProductComponent extends Component
{
    use WithFileUploads;
    public $name;
    public $slug;
    public $short_description;
    public $description;
    public $regular_price;
    public $sale_price;
    public $SKU;
    public $stock_status;
    public $featured;
    public $quantity;
    public $image;
    public $category_id;
    public $images;
    public $scategory_id;

    public $attr;
    public $inputs = [];
    public $attribute_arr = [];
    public $attribute_values;

    public function mount()
    {
        $this->stock_status = 'instock';
        $this->featured = '0';
    }

    public function add()
    {
        if (!in_array($this->attr, $this->attribute_arr)) //ila mal9inach la valeur li kayna f attr f l array (attribute_arr) alors
        {
            array_push($this->inputs, $this->attr);
            array_push($this->attribute_arr, $this->attr);
        }
    }
    public function remove($attr)
    {
        unset($this->inputs[$attr]);
    }
    public function generateslug()
    {
        $this->slug = Str::slug($this->name, '-');
    }
    public function updated($fields)
    {
        $this->validateOnly($fields, [
            'name' => 'required',
            'slug' => 'required|unique:products',
            // 'short_description' => 'required',
            // 'description' => 'required',
            // 'regular_price' => 'required|numeric',
            // 'sale_price' => 'numeric',
            // 'SKU' => 'required',
            // 'stock_status' => 'required',
            'quantity' => 'required|numeric',
            'image' => 'required|mimes:jpeg,png',
            'category_id' => 'required',
            'attr' => 'required'



        ]);
    }

    public function addproduct()
    {
        $this->validate([
            'name' => 'required',
            'slug' => 'required|unique:categoryys',
            // 'short_description' => 'required',
            // 'description' => 'required',
            // 'regular_price' => 'required|numeric',
            // 'sale_price' => 'numeric',
            // 'SKU' => 'required',
            // 'stock_status' => 'required',
            'quantity' => 'required|numeric',
            'image' => 'required|mimes:jpeg,png',
            'category_id' => 'required',
            'attr' => 'required'


        ]);
        $product = new Product();
        $product->name = $this->name;
        $product->slug = $this->slug;
        $product->short_description = $this->short_description;
        $product->description = $this->description;
        $product->regular_price = $this->regular_price;
        $product->sale_price = $this->sale_price;
        $product->SKU = $this->SKU;
        $product->featured = $this->featured;
        $product->quantity = $this->quantity;

        $imageName = Carbon::now()->timestamp . '.' . $this->image->extension();
        $this->image->storeAs('products', $imageName);
        $product->image = $imageName;

        if ($this->images) {
            $imagesname = "";
            foreach ($this->images as $key => $image) {
                $imageName = Carbon::now()->timestamp . $key . '.' . $image->extension();
                $image->storeAs('products', $imageName);
                $imagesname =  $imagesname . ',' .  $imageName;
            }
            $product->images =  $imagesname;
        }

        $product->category_id = $this->category_id;
        if ($this->scategory_id) {
            $product->subcategory_id = $this->scategory_id;
        }

        $product->save();
        foreach ($this->attribute_values as $key => $attribute_value) {
            $avalues = explode(',', $attribute_value);
            foreach ($avalues as $avalue) {
                $attribute_value = new AttributeValue();
                $attribute_value->product_attribute_id = $key;
                $attribute_value->value = $avalue;
                $attribute_value->product_id = $product->id;
                $attribute_value->save();
            }
        }

        session()->flash('message', 'product created succcessfully');
    }
    public function changeSubcategory()
    {
        $this->scategory_id = 0;
    }
    public function render()
    {
        $categories = Categoryy::all();
        $scategories = Subcategory::where('category_id', $this->category_id)->get();

        $pattributes = ProductAttribute::all(); //products attributes
        return view('livewire.admin.admin-add-product-component', compact('categories', 'scategories', 'pattributes'))->layout('layouts.base');
    }
}
