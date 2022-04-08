<?php

namespace App\Http\Livewire\Admin;

use Livewire\Component;
use App\Models\Categoryy;
use App\Models\Subcategory;
use Livewire\WithPagination;

class AdminCategoryComponent extends Component
{
    use WithPagination;


    public function deletecategories($id)
    {
        $category = Categoryy::find($id);
        $category->delete();
        session()->flash('message', 'deleted category successfuly');
    }

    public function deletesubcategory($id)
    {
        $subcategory = Subcategory::find($id);
        $subcategory->delete();
        session()->flash('message', 'deleted subcategory successfuly');
    }

    public function render()
    {
        $categories = Categoryy::paginate(5);
        return view('livewire.admin.admin-category-component', compact('categories'))->layout('layouts.base');
    }
}
