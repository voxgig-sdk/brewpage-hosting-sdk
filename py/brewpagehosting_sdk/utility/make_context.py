# BrewpageHosting SDK utility: make_context

from brewpagehosting_sdk.core.context import BrewpageHostingContext


def make_context_util(ctxmap, basectx):
    return BrewpageHostingContext(ctxmap, basectx)
