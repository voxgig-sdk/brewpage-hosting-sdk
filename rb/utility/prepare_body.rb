# BrewpageHosting SDK utility: prepare_body
require_relative 'media'
module BrewpageHostingUtilities
  PrepareBody = ->(ctx) {
    return nil unless ctx.op.input == "data"
    return BrewpageHostingUtilities.raw_body(ctx.reqdata) if BrewpageHostingUtilities.raw_request?(ctx.point)
    ctx.utility.transform_request.call(ctx)
  }
end
