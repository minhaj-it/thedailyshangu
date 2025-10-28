<?php

namespace Botble\Notice\Tables;

use Botble\Notice\Models\Notice;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\Actions\EditAction;
use Botble\Table\BulkActions\DeleteBulkAction;
use Botble\Table\BulkChanges\CreatedAtBulkChange;
use Botble\Table\BulkChanges\NameBulkChange;
use Botble\Table\BulkChanges\StatusBulkChange;
use Botble\Table\Columns\CreatedAtColumn;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\Columns\StatusColumn;
use Botble\Table\HeaderActions\CreateHeaderAction;
use Illuminate\Database\Eloquent\Builder;

class NoticeTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(Notice::class)
            ->addHeaderAction(CreateHeaderAction::make()->route('notice.create'))
            ->addActions([
                EditAction::make()->route('notice.edit'),
                DeleteAction::make()->route('notice.destroy'),
            ])
            ->addColumns([
                IdColumn::make(),
                NameColumn::make()->route('notice.edit'),
                CreatedAtColumn::make(),
                StatusColumn::make(),
            ])
            ->addBulkActions([
                DeleteBulkAction::make()->permission('notice.destroy'),
            ])
            ->addBulkChanges([
                NameBulkChange::make(),
                StatusBulkChange::make(),
                CreatedAtBulkChange::make(),
            ])
            ->queryUsing(function (Builder $query) {
                $query->select([
                    'id',
                    'name',
                    'created_at',
                    'status',
                ]);
            });
    }
}
