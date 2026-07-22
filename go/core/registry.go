package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewStatEntityFunc func(client *BrewpageHostingSDK, entopts map[string]any) BrewpageHostingEntity

