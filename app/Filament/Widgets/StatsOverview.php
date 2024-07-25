<?php

namespace App\Filament\Widgets;

use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use App\Models\Shareholder;

class StatsOverview extends BaseWidget
{
    protected function getStats(): array
    {
        return [
            Stat::make('Total Acciones:', $this->getTotalShares())->extraAttributes([
                'class' => 'cursor-pointer',])->chart([7, 7, 7, 7, 7, 7, 7])
            ->color('primary'),
            Stat::make('Total de Acciones Presente:', $this->getTotalSharesPart())->extraAttributes([
                'class' => 'cursor-pointer',])->chart([7, 7, 7, 7, 7, 7, 7])
            ->color('primary'),
            Stat::make('Quorum de Instalación:', $this->getTotalSharesPorc())->extraAttributes([
                'class' => 'cursor-pointer',])->chart([7, 7, 7, 7, 7, 7, 7])
            ->color('primary'),
        ];
    }


    protected function getTotalShares(){
        $TotalShares = Shareholder::select('actions')
        ->sum('actions');
       
        return  $TotalShares;
    }

    protected function getTotalSharesPart(){
        $TotalSharesPart = Shareholder::select('actions')
        ->where('assistance','1')
        ->sum('actions');
       
        return  $TotalSharesPart;
    }

    protected function getTotalSharesPorc(){
        $TotalSharesAct = Shareholder::select('actions')
        ->where('assistance','1')
        ->sum('actions');

        $TotalSharesTot = Shareholder::select('actions')
        ->sum('actions');

        
       
        $Porc = (round(($TotalSharesAct/$TotalSharesTot)*100,2));
        return  $Porc.' %';
    }
}
