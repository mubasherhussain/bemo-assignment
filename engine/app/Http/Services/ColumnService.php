<?php
namespace App\Http\Services;

use App\Models\Column;

class ColumnService {

    protected CardService $cardService;

    public function __construct()
    {
        $this->cardService = new CardService();
    }

    public function createColumn($request): Column {
        $lastRecord = Column::orderBy('order', 'desc')->first();
        $column = new Column();
        $column->title = $request['title'];
        $column->order = $lastRecord ? $lastRecord->order + 1 : 1;
        $column->save();
        return $column;
    }

    public function batchUpdateColumns($request)
    {
        $columnIds = [];
        $columns = $request->columns;
        foreach ($columns as $column) {
            $columnId = null;
            if(isset($column['id'])) {
                $existingColumn = Column::find($column['id']);
                $existingColumn->order = $column['order'];
                $existingColumn->save();
                $columnId = $existingColumn->id;
                if(isset($column['cards'])) {
                    $this->cardService->updateCardsAgainstColumn($columnId, $column['cards']);
                }
            } else {
                $newColumn = $this->createColumn([
                    'title' => $column['title']
                ]);
                $columnId = $newColumn->id;
            }
            $columnIds[] = $columnId;
        }
        Column::whereNotIn('id', $columnIds)->delete();
        return $this->getColumns();
    }

    public function getColumns() {
        return Column::with('cards')->orderBy('order')->get();
    }

    public function deleteColumn($request) {
        $column = Column::find($request->id);
        $column->delete();
        return $column;
    }

    public function updateColumn($request, $column) {
        $column->title = $request->title;
        $column->order = $request->order;
        $column->save();
        return $column;
    }
}
