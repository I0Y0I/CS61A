def unique_digits(n):
    """Return the number of unique digits in positive integer n.

    >>> unique_digits(8675309) # All are unique
    7
    >>> unique_digits(13173131) # 1, 3, and 7
    3
    >>> unique_digits(101) # 0 and 1
    2
    """
    "*** YOUR CODE HERE ***"
    o = 0
    for i in range(10):
        if has_digit(n, i):
            o += 1
    return o

def has_digit(n, k):
    """Returns whether k is a digit in n.

    >>> has_digit(10, 1)
    True
    >>> has_digit(12, 7)
    False
    >>> has_digit(12, 0)
    False
    >>> has_digit(0, 0)
    True
    >>> has_digit(0, 1)
    False
    """
    assert k >= 0 and k < 10
    "*** YOUR CODE HERE ***"
    while n >= 10:
        if n % 10 == k:
            return True
        n //= 10
    if n == k:
        return True
    return False
