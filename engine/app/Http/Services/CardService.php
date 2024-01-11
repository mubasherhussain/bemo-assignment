<?php
namespace App\Http\Services;

use App\Models\Card;
use Carbon\Carbon;
use Illuminate\Http\Request;

class CardService {

    public function getAllWithFilters(Request $request) {
        $cards = !isset($request->status) || $request->status == '1' ? Card::whereNull('deleted_at') : Card::onlyTrashed();
        if(isset($request->creation_date) && Carbon::parse($request->creation_date)->isValid()) {
            $cards = $cards->whereDate('created_at', Carbon::parse($request->creation_date)->format('Y-m-d'));
        }
        return $cards->get();
    }

    public function updateCardsAgainstColumn($columnId, $cards) {
        $cardIds = [];
        foreach ($cards as $card) {
            if(isset($card['id'])) {
                $existingCard = Card::withTrashed()->find($card['id']);
                $existingCard->deleted_at = null;
                $existingCard->column_id = $columnId;
                $existingCard->title = $card['title'];
                $existingCard->description = $card['description'];
                $existingCard->order = $card['order'];
                $existingCard->save();
                $cardIds[] = $existingCard->id;
            } else {
                $newCard = new Card();
                $newCard->column_id = $columnId;
                $newCard->title = $card['title'];
                $newCard->order = $card['order'];
                $newCard->save();
                $cardIds[] = $newCard->id;
            }
        }
        Card::where('column_id', $columnId)->whereNotIn('id', $cardIds)->delete();
    }

    public function deleteAllCardsAgainstColumn($columnId) {
        Card::where('column_id', $columnId)->delete();
    }
}
