<?php

namespace App\Filament\Widgets;
use App\Models\Shareholder;
use Filament\Widgets\ChartWidget;


class StharehlderChart extends ChartWidget
{
    protected static ?string $heading = 'Participación';

    protected function getData(): array
    {

        $si = Shareholder::select('actions')
        ->where('assistance','1')
        ->sum('actions');

        $no = Shareholder::select('actions')
        ->where('assistance','0')
        ->sum('actions');
        //sum('actions');
        //dd($no);


        return [
            'datasets' => [
                [ 
                    'data' => [$si, $no],
                    'backgroundColor'=> [
                      '#36A2EB',
                      '#FF6000'                      
                    ],
                    'borderColor' => [
                      '#36A2EB',
                      '#FF6000'                      
                    ],
                ],
            ],
            'labels' => ['Si','No'],
        ];
    }

    protected function getType(): string
    {
        return 'doughnut';
    }

    protected static ?string $maxHeight = '300px';

    protected static ?array $options = [
    'plugins' => [
        'legend' => [
            'display' => true,
            'position' => 'top',
            'fullSize' =>true,
        ],
        'decimation'=> [
            'enabled'=> false,
        ],
    ],
];
}
