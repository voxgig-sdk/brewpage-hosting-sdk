# BrewpageHosting SDK feature factory

from feature.base_feature import BrewpageHostingBaseFeature
from feature.test_feature import BrewpageHostingTestFeature


def _make_feature(name):
    features = {
        "base": lambda: BrewpageHostingBaseFeature(),
        "test": lambda: BrewpageHostingTestFeature(),
    }
    factory = features.get(name)
    if factory is not None:
        return factory()
    return features["base"]()
