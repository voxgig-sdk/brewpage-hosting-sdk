# BrewpageHosting SDK feature factory

from brewpagehosting_sdk.feature.base_feature import BrewpageHostingBaseFeature
from brewpagehosting_sdk.feature.ratelimit_feature import BrewpageHostingRatelimitFeature
from brewpagehosting_sdk.feature.retry_feature import BrewpageHostingRetryFeature
from brewpagehosting_sdk.feature.test_feature import BrewpageHostingTestFeature
from brewpagehosting_sdk.feature.timeout_feature import BrewpageHostingTimeoutFeature


_FEATURES = {
    "base": lambda: BrewpageHostingBaseFeature(),
    "ratelimit": lambda: BrewpageHostingRatelimitFeature(),
    "retry": lambda: BrewpageHostingRetryFeature(),
    "test": lambda: BrewpageHostingTestFeature(),
    "timeout": lambda: BrewpageHostingTimeoutFeature(),
}


def _make_feature(name):
    factory = _FEATURES.get(name)
    if factory is not None:
        return factory()
    return _FEATURES["base"]()


# True when this SDK was generated with the named feature class - the
# constructor's tolerance for extend-carried features reads this (an
# active name with no generated class must not become a BaseFeature
# stray when an extend instance carries it).
def _has_feature(name):
    return name in _FEATURES
