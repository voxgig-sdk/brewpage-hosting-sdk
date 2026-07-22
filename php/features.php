<?php
declare(strict_types=1);

// BrewpageHosting SDK feature factory

require_once __DIR__ . '/feature/BaseFeature.php';
require_once __DIR__ . '/feature/TestFeature.php';


class BrewpageHostingFeatures
{
    public static function make_feature(string $name)
    {
        switch ($name) {
            case "base":
                return new BrewpageHostingBaseFeature();
            case "test":
                return new BrewpageHostingTestFeature();
            default:
                return new BrewpageHostingBaseFeature();
        }
    }
}
