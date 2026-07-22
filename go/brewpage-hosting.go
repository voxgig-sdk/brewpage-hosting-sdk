package voxgigbrewpagehostingsdk

import (
	"github.com/voxgig-sdk/brewpage-hosting-sdk/go/core"
	"github.com/voxgig-sdk/brewpage-hosting-sdk/go/entity"
	"github.com/voxgig-sdk/brewpage-hosting-sdk/go/feature"
	_ "github.com/voxgig-sdk/brewpage-hosting-sdk/go/utility"
)

// Type aliases preserve external API.
type BrewpageHostingSDK = core.BrewpageHostingSDK
type Context = core.Context
type Utility = core.Utility
type Feature = core.Feature
type Entity = core.Entity
type BrewpageHostingEntity = core.BrewpageHostingEntity
type FetcherFunc = core.FetcherFunc
type Spec = core.Spec
type Result = core.Result
type Response = core.Response
type Operation = core.Operation
type Control = core.Control
type BrewpageHostingError = core.BrewpageHostingError

// BaseFeature from feature package.
type BaseFeature = feature.BaseFeature

func init() {
	core.NewBaseFeatureFunc = func() core.Feature {
		return feature.NewBaseFeature()
	}
	core.NewTestFeatureFunc = func() core.Feature {
		return feature.NewTestFeature()
	}
	core.NewStatEntityFunc = func(client *core.BrewpageHostingSDK, entopts map[string]any) core.BrewpageHostingEntity {
		return entity.NewStatEntity(client, entopts)
	}
}

// Constructor re-exports.
var NewBrewpageHostingSDK = core.NewBrewpageHostingSDK
var TestSDK = core.TestSDK
var NewContext = core.NewContext
var NewSpec = core.NewSpec
var NewResult = core.NewResult
var NewResponse = core.NewResponse
var NewOperation = core.NewOperation
var MakeConfig = core.MakeConfig

// No-arg convenience constructors. Go has no default-argument syntax,
// so these aliases let callers write `sdk.New()` / `sdk.Test()`
// instead of `sdk.NewBrewpageHostingSDK(nil)` / `sdk.TestSDK(nil, nil)`
// for the common no-options case.
func New() *BrewpageHostingSDK  { return NewBrewpageHostingSDK(nil) }
func Test() *BrewpageHostingSDK { return TestSDK(nil, nil) }
var NewBaseFeature = feature.NewBaseFeature
var NewTestFeature = feature.NewTestFeature
