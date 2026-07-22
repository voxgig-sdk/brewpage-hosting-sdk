<?php
declare(strict_types=1);

// BrewpageHosting SDK configuration

class BrewpageHostingConfig
{
    public static function make_config(): array
    {
        return [
            "main" => [
                "name" => "BrewpageHosting",
            ],
            "feature" => [
                "test" => [
          'options' => [
            'active' => false,
          ],
        ],
            ],
            "options" => [
                "base" => "https://brewpage.app/api",
                "headers" => [
          'content-type' => 'application/json',
        ],
                "entity" => [
                    "stat" => [],
                ],
            ],
            "entity" => [
        'stat' => [
          'fields' => [
            [
              'active' => true,
              'name' => 'total_resource',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 0,
            ],
            [
              'active' => true,
              'name' => 'total_view',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 1,
            ],
            [
              'active' => true,
              'name' => 'views_today',
              'req' => false,
              'type' => '`$INTEGER`',
              'index$' => 2,
            ],
          ],
          'name' => 'stat',
          'op' => [
            'load' => [
              'input' => 'data',
              'name' => 'load',
              'points' => [
                [
                  'active' => true,
                  'args' => [],
                  'method' => 'GET',
                  'orig' => '/stats',
                  'parts' => [
                    'stats',
                  ],
                  'select' => [],
                  'transform' => [
                    'req' => '`reqdata`',
                    'res' => '`body`',
                  ],
                  'index$' => 0,
                ],
              ],
              'key$' => 'load',
            ],
          ],
          'relations' => [
            'ancestors' => [],
          ],
        ],
      ],
        ];
    }


    public static function make_feature(string $name)
    {
        require_once __DIR__ . '/features.php';
        return BrewpageHostingFeatures::make_feature($name);
    }
}
