# frozen_string_literal: true

# Typed models for the BrewpageHosting SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields[] and per-op
# params (op.<name>.points[].args.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# Stat entity data model.
#
# @!attribute [rw] totalResources
#   @return [Integer, nil]
#
# @!attribute [rw] totalViews
#   @return [Integer, nil]
#
# @!attribute [rw] viewsToday
#   @return [Integer, nil]
Stat = Struct.new(
  :totalResources,
  :totalViews,
  :viewsToday,
  keyword_init: true
)

# Request payload for Stat#load.
#
# @!attribute [rw] totalResources
#   @return [Integer, nil]
#
# @!attribute [rw] totalViews
#   @return [Integer, nil]
#
# @!attribute [rw] viewsToday
#   @return [Integer, nil]
StatLoadMatch = Struct.new(
  :totalResources,
  :totalViews,
  :viewsToday,
  keyword_init: true
)

