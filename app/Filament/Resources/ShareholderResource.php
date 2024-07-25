<?php

namespace App\Filament\Resources;

use App\Filament\Resources\ShareholderResource\Pages;
use App\Filament\Resources\ShareholderResource\RelationManagers;
use App\Models\Shareholder;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\Select;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;
use Filament\Tables\Columns\ToggleColumn;

class ShareholderResource extends Resource
{
    protected static ?string $model = Shareholder::class;

    protected static ?string $navigationLabel = 'Accionistas';

    public static function getModelLabel(): string{
        return 'Accionista';
    }

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('number')
                ->autocomplete(false),
                TextInput::make('name')
                ->autocomplete(false),
                TextInput::make('actions')
                ->autocomplete(false),
               Select::make('assistance')
                ->options([
                    'Si' => 'Si',
                    'No' => 'No',
                ])
                
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
               TextColumn::make('number')
               ->label('Nº')
               ->sortable()
               ->searchable(),
               TextColumn::make('name')
               ->label('Nombre y Apellido')
               ->sortable()
               ->searchable(),
               TextColumn::make('actions')
               ->label('Nº de Acciones')
               ->sortable()
               ->searchable(),
               ToggleColumn::make('assistance')
               ->label('Asistencia')
               ->onColor('success')
               ->offColor('danger')
               ->sortable()
               ->searchable()
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
              //  Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
                 ExportBulkAction::make(),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ManageShareholders::route('/'),
        ];
    }
}
