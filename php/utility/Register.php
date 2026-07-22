<?php
declare(strict_types=1);

// BrewpageHosting SDK utility registration

require_once __DIR__ . '/../core/UtilityType.php';
require_once __DIR__ . '/Clean.php';
require_once __DIR__ . '/Done.php';
require_once __DIR__ . '/MakeError.php';
require_once __DIR__ . '/FeatureAdd.php';
require_once __DIR__ . '/FeatureHook.php';
require_once __DIR__ . '/FeatureInit.php';
require_once __DIR__ . '/Fetcher.php';
require_once __DIR__ . '/MakeFetchDef.php';
require_once __DIR__ . '/MakeContext.php';
require_once __DIR__ . '/MakeOptions.php';
require_once __DIR__ . '/MakeRequest.php';
require_once __DIR__ . '/MakeResponse.php';
require_once __DIR__ . '/MakeResult.php';
require_once __DIR__ . '/MakePoint.php';
require_once __DIR__ . '/MakeSpec.php';
require_once __DIR__ . '/MakeUrl.php';
require_once __DIR__ . '/Param.php';
require_once __DIR__ . '/PrepareAuth.php';
require_once __DIR__ . '/PrepareBody.php';
require_once __DIR__ . '/PrepareHeaders.php';
require_once __DIR__ . '/PrepareMethod.php';
require_once __DIR__ . '/PrepareParams.php';
require_once __DIR__ . '/PreparePath.php';
require_once __DIR__ . '/PrepareQuery.php';
require_once __DIR__ . '/ResultBasic.php';
require_once __DIR__ . '/ResultBody.php';
require_once __DIR__ . '/ResultHeaders.php';
require_once __DIR__ . '/TransformRequest.php';
require_once __DIR__ . '/TransformResponse.php';

BrewpageHostingUtility::setRegistrar(function (BrewpageHostingUtility $u): void {
    $u->clean = [BrewpageHostingClean::class, 'call'];
    $u->done = [BrewpageHostingDone::class, 'call'];
    $u->make_error = [BrewpageHostingMakeError::class, 'call'];
    $u->feature_add = [BrewpageHostingFeatureAdd::class, 'call'];
    $u->feature_hook = [BrewpageHostingFeatureHook::class, 'call'];
    $u->feature_init = [BrewpageHostingFeatureInit::class, 'call'];
    $u->fetcher = [BrewpageHostingFetcher::class, 'call'];
    $u->make_fetch_def = [BrewpageHostingMakeFetchDef::class, 'call'];
    $u->make_context = [BrewpageHostingMakeContext::class, 'call'];
    $u->make_options = [BrewpageHostingMakeOptions::class, 'call'];
    $u->make_request = [BrewpageHostingMakeRequest::class, 'call'];
    $u->make_response = [BrewpageHostingMakeResponse::class, 'call'];
    $u->make_result = [BrewpageHostingMakeResult::class, 'call'];
    $u->make_point = [BrewpageHostingMakePoint::class, 'call'];
    $u->make_spec = [BrewpageHostingMakeSpec::class, 'call'];
    $u->make_url = [BrewpageHostingMakeUrl::class, 'call'];
    $u->param = [BrewpageHostingParam::class, 'call'];
    $u->prepare_auth = [BrewpageHostingPrepareAuth::class, 'call'];
    $u->prepare_body = [BrewpageHostingPrepareBody::class, 'call'];
    $u->prepare_headers = [BrewpageHostingPrepareHeaders::class, 'call'];
    $u->prepare_method = [BrewpageHostingPrepareMethod::class, 'call'];
    $u->prepare_params = [BrewpageHostingPrepareParams::class, 'call'];
    $u->prepare_path = [BrewpageHostingPreparePath::class, 'call'];
    $u->prepare_query = [BrewpageHostingPrepareQuery::class, 'call'];
    $u->result_basic = [BrewpageHostingResultBasic::class, 'call'];
    $u->result_body = [BrewpageHostingResultBody::class, 'call'];
    $u->result_headers = [BrewpageHostingResultHeaders::class, 'call'];
    $u->transform_request = [BrewpageHostingTransformRequest::class, 'call'];
    $u->transform_response = [BrewpageHostingTransformResponse::class, 'call'];
});
