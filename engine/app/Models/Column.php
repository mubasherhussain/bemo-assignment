<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Column extends Model
{
    use SoftDeletes;
    use HasFactory;

    protected $fillable = [
        'title',
        'order',
    ];

    public function cards()
    {
        return $this->hasMany(Card::class, 'column_id', 'id')->orderBy('order');
    }
}
