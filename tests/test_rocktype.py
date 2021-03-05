import unittest
from rocktype.rocktype import Rocktype


class RocktypeTest(unittest.TestCase):

    def test_something(self):
        assert str(Rocktype()) == "Rocktype"
