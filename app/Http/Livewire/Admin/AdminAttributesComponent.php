<?php

namespace App\Http\Livewire\Admin;

use App\Models\ProductAttribute;
use Livewire\Component;

class AdminAttributesComponent extends Component
{
    public $attribute_id;
    public function deleteAttributes($attribute_id)
    {
        $pattribute = ProductAttribute::find($attribute_id);
        $pattribute->delete();

        session()->flash('message', 'attribute has been deleted successfully');
    }
    public function render()
    {
        $pattributes = ProductAttribute::paginate(10);
        return view('livewire.admin.admin-attributes-component', compact('pattributes'))->layout('layouts.base');
    }
}
