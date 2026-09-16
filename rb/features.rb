# BrewpageHosting SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/ratelimit_feature'
require_relative 'feature/retry_feature'
require_relative 'feature/test_feature'
require_relative 'feature/timeout_feature'


module BrewpageHostingFeatures
  def self.make_feature(name)
    case name
    when "base"
      BrewpageHostingBaseFeature.new
    when "ratelimit"
      BrewpageHostingRatelimitFeature.new
    when "retry"
      BrewpageHostingRetryFeature.new
    when "test"
      BrewpageHostingTestFeature.new
    when "timeout"
      BrewpageHostingTimeoutFeature.new
    else
      BrewpageHostingBaseFeature.new
    end
  end
end
