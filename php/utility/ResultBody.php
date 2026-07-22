<?php
declare(strict_types=1);

// BrewpageHosting SDK utility: result_body

class BrewpageHostingResultBody
{
    public static function call(BrewpageHostingContext $ctx): ?BrewpageHostingResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result && $response && $response->json_func && $response->body) {
            $result->body = ($response->json_func)();
        }
        return $result;
    }
}
