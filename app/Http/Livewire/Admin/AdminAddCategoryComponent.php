<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\Categoryy;
use App\Models\Subcategory;
use Illuminate\Support\Str;

class AdminAddCategoryComponent extends Component
{
    public $name;
    public $slug;
    public $category_id;

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

    public function StoreCategory()
    {
        $this->validate([
            'name' => 'required',
            'slug' => 'required|unique:categoryys',
        ]);
        if ($this->category_id) {
            $subcategory = new Subcategory();
            $subcategory->name = $this->name;
            $subcategory->slug = $this->slug;
            $subcategory->category_id = $this->category_id;
            $subcategory->save();
        } else {
            $category = new Categoryy();
            $category->name = $this->name;
            $category->slug = $this->slug;
            $category->save();
        }

        session()->flash('message', 'add category successfully');
    }

    public function render()
    {
        $categories = Categoryy::all();
        return view('livewire.admin.admin-add-category-component', compact('categories'))->layout('layouts.base');
    }
}
