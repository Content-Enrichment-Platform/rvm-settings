import rvm_settings

# noinspection PyUnresolvedReferences
from conftest import *


class TestModule:
    def test_import_module(self):
        assert "rvm_settings" in sys.modules

    def test_import_submodules(self):
        assert "rvm_settings.topics" in sys.modules
        assert "rvm_settings.submission_filters" in sys.modules
