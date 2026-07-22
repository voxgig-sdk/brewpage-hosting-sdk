<?php
declare(strict_types=1);

// BrewpageHosting SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class BrewpageHostingMakeContext
{
    public static function call(array $ctxmap, ?BrewpageHostingContext $basectx): BrewpageHostingContext
    {
        return new BrewpageHostingContext($ctxmap, $basectx);
    }
}
