<?php

namespace App\Http\Livewire\Admin;

use Carbon\Carbon;
use App\Models\Order;
use Livewire\Component;

class AdminDashboardComponent extends Component
{
    public function render()
    {
        $orders = Order::orderBy('created_At', 'DESC')->get()->take(20);
        $totalSales = Order::withTrashed()->where('status', 'delivered')->count();
        $totalRevenue = Order::withTrashed()->where('status', 'delivered')->sum('total');
        $todaySales = Order::withTrashed()->where('status', 'delivered')->whereDate('created_at', Carbon::today())->count();
        $todayRevenue = Order::withTrashed()->where('status', 'delivered')->whereDate('created_at', Carbon::today())->sum('total');
        return view('livewire.admin.admin-dashboard-component', compact('orders', 'totalSales', 'totalRevenue', 'todaySales', 'todayRevenue'))->layout("layouts.base");
    }
}
