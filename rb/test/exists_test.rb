# BrewpageHosting SDK exists test

require "minitest/autorun"
require_relative "../BrewpageHosting_sdk"

class ExistsTest < Minitest::Test
  def test_create_test_sdk
    testsdk = BrewpageHostingSDK.test(nil, nil)
    assert !testsdk.nil?
  end
end
