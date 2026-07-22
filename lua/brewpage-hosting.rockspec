package = "voxgig-sdk-brewpage-hosting"
version = "0.0.1-1"
source = {
  -- git+https (GitHub dropped git:// in 2022); pin the install to the release
  -- tag pushed by `make publish`, and point at the lua/ subdir of the monorepo.
  url = "git+https://github.com/voxgig-sdk/brewpage-hosting-sdk.git",
  tag = "lua/v0.0.1",
  dir = "brewpage-hosting-sdk/lua"
}
description = {
  summary = "Unofficial generated Lua SDK for the BrewPage Hosting public API. Not affiliated with or endorsed by the upstream API provider.",
  homepage = "https://github.com/voxgig-sdk/brewpage-hosting-sdk",
  issues_url = "https://github.com/voxgig-sdk/brewpage-hosting-sdk/issues",
  license = "MIT",
  labels = { "voxgig", "sdk", "generated-sdk", "openapi", "api-client", "brewpage-hosting" }
}
dependencies = {
  "lua >= 5.3",
  "dkjson >= 2.5",
}
build = {
  type = "builtin",
  modules = {
    ["brewpage-hosting_sdk"] = "brewpage-hosting_sdk.lua",
    ["config"] = "config.lua",
    ["features"] = "features.lua",
  }
}
