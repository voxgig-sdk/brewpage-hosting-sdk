# BrewpageHosting SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/test_feature'


module BrewpageHostingFeatures
  def self.make_feature(name)
    case name
    when "base"
      BrewpageHostingBaseFeature.new
    when "test"
      BrewpageHostingTestFeature.new
    else
      BrewpageHostingBaseFeature.new
    end
  end
end
