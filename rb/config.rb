# BrewpageHosting SDK configuration

module BrewpageHostingConfig
  def self.make_config
    {
      "main" => {
        "name" => "BrewpageHosting",
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
              "active" => true,
              "name" => "totalResources",
              "req" => false,
              "type" => "`$INTEGER`",
              "index$" => 0,
            },
            {
              "active" => true,
              "name" => "totalViews",
              "req" => false,
              "type" => "`$INTEGER`",
              "index$" => 1,
            },
            {
              "active" => true,
              "name" => "viewsToday",
              "req" => false,
              "type" => "`$INTEGER`",
              "index$" => 2,
            },
          ],
          "name" => "stat",
          "op" => {
            "load" => {
              "input" => "data",
              "name" => "load",
              "points" => [
                {
                  "active" => true,
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
                  "index$" => 0,
                },
              ],
              "key$" => "load",
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
