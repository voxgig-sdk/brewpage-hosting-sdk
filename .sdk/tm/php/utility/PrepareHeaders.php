<?php
declare(strict_types=1);

// BrewpageHosting SDK utility: prepare_headers

class BrewpageHostingPrepareHeaders
{
    public static function call(BrewpageHostingContext $ctx): array
    {
        $options = $ctx->client->options_map();
        $headers = \Voxgig\Struct\Struct::getprop($options, 'headers');
        if (!$headers) {
            return [];
        }
        $out = \Voxgig\Struct\Struct::clone($headers);
        return is_array($out) ? $out : [];
    }
}
