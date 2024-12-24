# def has_fact(n, k):
    # """Returns Trun if n has a factorial between 2 to k"""
    # if k < 2:
        # return False
    # if n % k == 0:
        # return True
    # return has_fact(n, k-1)

def is_prime(n):
    """Returns True if n is a prime number and False otherwise.
    >>> is_prime(2)
    True
    >>> is_prime(16)
    False
    >>> is_prime(521)
    True
    """
    "*** YOUR CODE HERE ***"
    def has_no_fact(k):
        """Returns Ture if n has no fact between k and n. """
        if k >= n:
            return True
        if n % k == 0:
            return False
        return has_no_fact(k+1)
    return has_no_fact(2)
    # return not has_fact(n, n-1)

