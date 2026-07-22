<?php
declare(strict_types=1);

// BrewpageHosting SDK utility: prepare_body

class BrewpageHostingPrepareBody
{
    public static function call(BrewpageHostingContext $ctx): mixed
    {
        if ($ctx->op->input === 'data') {
            return ($ctx->utility->transform_request)($ctx);
        }
        return null;
    }
}
