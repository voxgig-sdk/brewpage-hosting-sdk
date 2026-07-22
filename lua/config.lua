-- BrewpageHosting SDK configuration

local function make_config()
  return {
    main = {
      name = "BrewpageHosting",
    },
    feature = {
      ["test"] = {
        ["options"] = {
          ["active"] = false,
        },
      },
    },
    options = {
      base = "https://brewpage.app/api",
      headers = {
        ["content-type"] = "application/json",
      },
      entity = {
        ["stat"] = {},
      },
    },
    entity = {
      ["stat"] = {
        ["fields"] = {
          {
            ["active"] = true,
            ["name"] = "total_resource",
            ["req"] = false,
            ["type"] = "`$INTEGER`",
            ["index$"] = 0,
          },
          {
            ["active"] = true,
            ["name"] = "total_view",
            ["req"] = false,
            ["type"] = "`$INTEGER`",
            ["index$"] = 1,
          },
          {
            ["active"] = true,
            ["name"] = "views_today",
            ["req"] = false,
            ["type"] = "`$INTEGER`",
            ["index$"] = 2,
          },
        },
        ["name"] = "stat",
        ["op"] = {
          ["load"] = {
            ["input"] = "data",
            ["name"] = "load",
            ["points"] = {
              {
                ["active"] = true,
                ["args"] = {},
                ["method"] = "GET",
                ["orig"] = "/stats",
                ["parts"] = {
                  "stats",
                },
                ["select"] = {},
                ["transform"] = {
                  ["req"] = "`reqdata`",
                  ["res"] = "`body`",
                },
                ["index$"] = 0,
              },
            },
            ["key$"] = "load",
          },
        },
        ["relations"] = {
          ["ancestors"] = {},
        },
      },
    },
  }
end


local function make_feature(name)
  local features = require("features")
  local factory = features[name]
  if factory ~= nil then
    return factory()
  end
  return features.base()
end


-- Attach make_feature to the SDK class
local function setup_sdk(SDK)
  SDK._make_feature = make_feature
end


return make_config
