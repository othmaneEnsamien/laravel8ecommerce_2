<?php

namespace App\Http\Livewire\Admin;

use App\Models\Categoryy;
use App\Models\HomeCategory;
use Livewire\Component;

class AdminHomeCategoryComponent extends Component
{
    public $selected_categories = [];
    public $numberofproducts;

    public function mount()
    {
        $category = HomeCategory::find(1);
        $this->selected_categories = explode(',', $category->select_categories);
        $this->no_of_products = $category->no_of_products;
    }

    public function updateHomeCategory()
    {
        $category = HomeCategory::find(1);
        $category->select_categories = implode(',', $this->selected_categories);
        $category->no_of_products = $this->no_of_products;
        $category->save();
        session()->flash('message', 'categoryHome has been updated successfuly');
    }
    public function render()
    {
        $categories = Categoryy::all();
        return view('livewire.admin.admin-home-category-component', compact('categories'))->layout('layouts.base');
    }
}
