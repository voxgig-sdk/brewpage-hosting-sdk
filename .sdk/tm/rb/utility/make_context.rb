# BrewpageHosting SDK utility: make_context
require_relative '../core/context'
module BrewpageHostingUtilities
  MakeContext = ->(ctxmap, basectx) {
    BrewpageHostingContext.new(ctxmap, basectx)
  }
end
