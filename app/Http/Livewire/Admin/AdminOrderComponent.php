<?php

namespace App\Http\Livewire\Admin;

use App\Models\Order;
use Livewire\Component;
use Illuminate\Support\Facades\DB;
use Livewire\WithPagination;

class AdminOrderComponent extends Component
{
    use WithPagination;
    public $searchOrder;
    public function updateOrderStatus($order_id, $status)
    {
        $order = Order::find($order_id);
        $order->status = $status;
        if ($status == "delivered") {
            $order->delivered_date = DB::raw('CURRENT_DATE');
        } else if ($status == "cancelled") {
            $order->cancelled_date = DB::raw('CURRENT_DATE');
        } else if ($status == "confirmed") {
            $order->confirmed_date = DB::raw('CURRENT_DATE');
        }

        $order->save();
        session()->flash('order_message', 'Order status has been updated successfully');
    }
    public function deleteOrder($id)
    {
        $orders = Order::find($id);
        $orders->delete($id);
        session()->flash('order_message', 'order has been deleted successfully');
    }
    public function render()
    {
        $search = '%' . $this->searchOrder . '%';
        $orders = Order::where('id', 'LIKE', $search)
            ->orwhere('lastname', 'LIKE', $search)
            ->orwhere('firstname', 'LIKE', $search)
            ->orwhere('created_at', 'LIKE', $search)
            ->orwhere('status', 'LIKE', $search)
            ->orwhere('zipcode', 'LIKE', $search)
            ->orwhere('email', 'LIKE', $search)
            ->orderBy('created_at', 'ASC')->paginate(10);
        return view('livewire.admin.admin-order-component', compact('orders'))->layout('layouts.base');
    }
}
