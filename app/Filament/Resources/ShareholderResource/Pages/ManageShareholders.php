<?php

namespace App\Filament\Resources\ShareholderResource\Pages;

use App\Filament\Resources\ShareholderResource;
use Filament\Actions;
use Filament\Resources\Pages\ManageRecords;
use App\Imports\MyClientImport;

class ManageShareholders extends ManageRecords
{
    protected static string $resource = ShareholderResource::class;

    protected function getHeaderActions(): array
    {
        return [
            \EightyNine\ExcelImport\ExcelImportAction::make()
                ->color("primary")
                ,
           // Actions\CreateAction::make(),
        ];
    }

    
}
