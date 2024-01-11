<?php

namespace App\Http\Controllers;

use App\Http\Services\CardService;
use Illuminate\Http\Request;

class CardController extends Controller
{

    protected CardService $cardService;

    public function __construct() {
        $this->cardService = new CardService();
    }

    public function getAll(Request $request) {
        return $this->cardService->getAllWithFilters($request);
    }
}
