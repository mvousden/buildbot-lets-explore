from complicated_library import addition, subtraction

def test_addition():
    """
    Tests the addition function.
    """

    assert addition(-3, 4) == 1


def test_subtraction():
    """
    Tests the subtraction function.
    """

    assert subtraction(-3, 4) == -7


if __name__ == "__main__":
    print("Testing addition...")
    test_addition()
    print("Testing subtraction...")
    test_subtraction()
    print("Test passed!")
