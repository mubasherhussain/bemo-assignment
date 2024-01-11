<?php

namespace App\Http\Controllers;

use App\Http\Services\ColumnService;
use App\Models\Column;
use Illuminate\Http\Request;

class ColumnController extends Controller
{

    protected $columnService;

    public function __construct()
    {
        $this->columnService = new ColumnService();
    }

    function get() {
        return $this->columnService->getColumns();
    }

    function create(Request $request): Column
    {
        return $this->columnService->createColumn($request);
    }

    function batchUpdateColumns(Request $request)
    {
        return $this->columnService->batchUpdateColumns($request);
    }

    function delete(Request $request) {
        return $this->columnService->deleteColumn($request);
    }
}
