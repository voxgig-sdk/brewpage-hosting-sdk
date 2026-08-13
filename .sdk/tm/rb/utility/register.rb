# BrewpageHosting SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'graphql'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

BrewpageHostingUtility.registrar = ->(u) {
  u.clean = BrewpageHostingUtilities::Clean
  u.done = BrewpageHostingUtilities::Done
  u.make_error = BrewpageHostingUtilities::MakeError
  u.feature_add = BrewpageHostingUtilities::FeatureAdd
  u.feature_hook = BrewpageHostingUtilities::FeatureHook
  u.feature_init = BrewpageHostingUtilities::FeatureInit
  u.fetcher = BrewpageHostingUtilities::Fetcher
  u.make_fetch_def = BrewpageHostingUtilities::MakeFetchDef
  u.make_context = BrewpageHostingUtilities::MakeContext
  u.make_options = BrewpageHostingUtilities::MakeOptions
  u.make_request = BrewpageHostingUtilities::MakeRequest
  u.make_response = BrewpageHostingUtilities::MakeResponse
  u.make_result = BrewpageHostingUtilities::MakeResult
  u.make_point = BrewpageHostingUtilities::MakePoint
  u.make_spec = BrewpageHostingUtilities::MakeSpec
  u.make_url = BrewpageHostingUtilities::MakeUrl
  u.param = BrewpageHostingUtilities::Param
  u.prepare_auth = BrewpageHostingUtilities::PrepareAuth
  u.prepare_body = BrewpageHostingUtilities::PrepareBody
  u.prepare_headers = BrewpageHostingUtilities::PrepareHeaders
  u.prepare_method = BrewpageHostingUtilities::PrepareMethod
  u.prepare_params = BrewpageHostingUtilities::PrepareParams
  u.prepare_path = BrewpageHostingUtilities::PreparePath
  u.prepare_query = BrewpageHostingUtilities::PrepareQuery
  u.graphql_body = BrewpageHostingUtilities::GraphqlBody
  u.graphql_errors = BrewpageHostingUtilities::GraphqlErrors
  u.result_basic = BrewpageHostingUtilities::ResultBasic
  u.result_body = BrewpageHostingUtilities::ResultBody
  u.result_headers = BrewpageHostingUtilities::ResultHeaders
  u.transform_request = BrewpageHostingUtilities::TransformRequest
  u.transform_response = BrewpageHostingUtilities::TransformResponse
}
