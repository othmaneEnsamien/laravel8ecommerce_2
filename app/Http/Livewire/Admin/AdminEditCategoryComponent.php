<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\Categoryy;
use App\Models\Subcategory;
use Illuminate\Support\Str;

class AdminEditCategoryComponent extends Component
{
    public $category_slug;
    public $category_id;
    public $subcategory_slug;
    public $name;
    public $slug;
    public $subcategory_id;

    public function mount($category_slug, $subcategory_slug = null)
    {
        if ($subcategory_slug) {
            $this->subcategory_slug = $subcategory_slug;
            $subcategory = Subcategory::where('slug', $subcategory_slug)->first();
            $this->subcategory_id = $subcategory->id;
            $this->category_id = $subcategory->category_id;
            $this->name = $subcategory->name;
            $this->slug = $subcategory->slug;
        } else {
            $this->category_slug = $category_slug;
            $category = Categoryy::where('slug', $category_slug)->first();
            $this->category_id = $category->id;
            $this->name = $category->name;
            $this->slug = $category->slug;
        }
    }

    public function generateslug()
    {
        $this->slug = Str::slug($this->name);
    }
    public function updated($fields)
    {
        $this->validateOnly($fields, [
            'name' => 'required',
            'slug' => 'required|unique:categories',

        ]);
    }
    public function updatecategory()
    {
        $this->validate([
            'name' => 'required',
            'slug' => 'required|unique:categoryys',
        ]);
        if ($this->subcategory_id) {
            $subcategory = Subcategory::find($this->subcategory_id);
            $subcategory->name = $this->name;
            $subcategory->slug = $this->slug;
            $subcategory->category_id = $this->category_id;
            $subcategory->save();
        } else {
            $category = Categoryy::find($this->category_id);
            $category->name = $this->name;
            $category->slug = $this->slug;
            $category->save();
        }
        session()->flash('message', 'category updated successfuly');
    }
    public function render()
    {

        $categories = Categoryy::All();
        return view('livewire.admin.admin-edit-category-component', compact('categories'))->layout("layouts.base");
    }
}
