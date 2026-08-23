# BrewpageHosting SDK configuration

module BrewpageHostingConfig
  # Return the process-wide config, built once on first use. The SDK reads
  # the config on every request and never writes to it, so one instance is
  # shared by every client rather than rebuilt per client.
  #
  # The returned hash is shared: treat it as read-only. Callers that need to
  # mutate should use make_config, which always returns a fresh copy.
  def self.shared_config
    @shared_config ||= make_config
  end


  # Build a fresh, fully materialised config hash. Every call rebuilds the
  # whole structure, so prefer shared_config unless you need a private copy
  # you intend to mutate.
  def self.make_config
    {
      "main" => {
        "name" => "BrewpageHosting",
        "slug" => "brewpage-hosting",
        "version" => "0.0.1",
        "target" => "rb",
      },
      "feature" => {
        "test" => {
          "options" => {
            "active" => false,
          },
        },
      },
      "options" => {
        "base" => "https://brewpage.app/api",
        "headers" => {
          "content-type" => "application/json",
        },
        "entity" => {
          "stat" => {},
        },
      },
      "entity" => {
        "stat" => {
          "fields" => [
            {
              "name" => "totalResources",
              "short" => "Total number of resources hosted on the platform",
              "type" => "`$INTEGER`",
            },
            {
              "name" => "totalViews",
              "short" => "Total number of views across all resources",
              "type" => "`$INTEGER`",
            },
            {
              "name" => "viewsToday",
              "short" => "Number of views recorded today",
              "type" => "`$INTEGER`",
            },
          ],
          "name" => "stat",
          "op" => {
            "load" => {
              "input" => "data",
              "name" => "load",
              "points" => [
                {
                  "args" => {},
                  "kind" => "http",
                  "method" => "GET",
                  "orig" => "/stats",
                  "parts" => [
                    "stats",
                  ],
                  "select" => {},
                  "transform" => {
                    "req" => "`reqdata`",
                    "res" => "`body`",
                  },
                },
              ],
            },
          },
          "relations" => {
            "ancestors" => [],
          },
        },
      },
    }
  end


  def self.make_feature(name)
    require_relative 'features'
    BrewpageHostingFeatures.make_feature(name)
  end
end
