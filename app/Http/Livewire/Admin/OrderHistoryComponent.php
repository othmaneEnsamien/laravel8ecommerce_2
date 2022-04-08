<?php

namespace App\Http\Livewire\Admin;

use App\Models\Order;
use Livewire\Component;
use Livewire\WithPagination;

class OrderHistoryComponent extends Component
{
    use WithPagination;
    public $search_history;
    public function render()
    {
        $search = '%' . $this->search_history . '%';
        $orderss = Order::withTrashed()->where('status', 'delivered')
            ->where('created_at', 'LIKE', $search)
            ->orderBy('created_at', 'ASC')->paginate(10);

        return view('livewire.admin.order-history-component', compact('orderss'))->layout('layouts.base');
    }
}
