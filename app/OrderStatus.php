<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OrderStatus extends Model
{
    protected $fillable = [
        'order_name', 'order_status', 'used_internal', 'grand_total'
    ];
}
