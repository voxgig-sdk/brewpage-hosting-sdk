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
# @!attribute [rw] total_resource
#   @return [Integer, nil]
#
# @!attribute [rw] total_view
#   @return [Integer, nil]
#
# @!attribute [rw] views_today
#   @return [Integer, nil]
Stat = Struct.new(
  :total_resource,
  :total_view,
  :views_today,
  keyword_init: true
)

# Request payload for Stat#load.
#
# @!attribute [rw] total_resource
#   @return [Integer, nil]
#
# @!attribute [rw] total_view
#   @return [Integer, nil]
#
# @!attribute [rw] views_today
#   @return [Integer, nil]
StatLoadMatch = Struct.new(
  :total_resource,
  :total_view,
  :views_today,
  keyword_init: true
)

