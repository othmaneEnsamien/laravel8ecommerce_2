<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Order extends Model
{
    use SoftDeletes;
    use HasFactory;
    protected $table = "orders";



    public function user()
    {
        return $this->belongsTo(User::class);
    }
    public function orderItems()
    {
        return $this->hasMany(OrderItems::class);
    }

    public function shipping()
    {
        return $this->hasOne(Shipping::class);
    }
    public function transaction()
    {
        return $this->hasOne(Transaction::class);
    }
}
