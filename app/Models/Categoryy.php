<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categoryy extends Model
{
    use HasFactory;
    protected $table = 'categoryys';


    public function subCategoryys()
    {
        return $this->hasMany(Subcategory::class, 'category_id');
    }
}
