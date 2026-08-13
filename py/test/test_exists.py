# BrewpageHosting SDK exists test

import pytest
from brewpagehosting_sdk import BrewpageHostingSDK


class TestExists:

    def test_should_create_test_sdk(self):
        testsdk = BrewpageHostingSDK.test(None, None)
        assert testsdk is not None
