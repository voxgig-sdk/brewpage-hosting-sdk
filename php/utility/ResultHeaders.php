<?php
declare(strict_types=1);

// BrewpageHosting SDK utility: result_headers

class BrewpageHostingResultHeaders
{
    public static function call(BrewpageHostingContext $ctx): ?BrewpageHostingResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}
