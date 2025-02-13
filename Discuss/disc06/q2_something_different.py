def differences(t):
    """Yield the differences between adjacent values from iterator t.
    
    >>> list(differences(iter([5, 2, -100, 103])))
    [-3, -102, 203]
    >>> next(differences(iter([39, 100])))
    61
    """
    "*** YOUR CODE HERE ***"
    a = next(t)
    for i in t:
        yield i - a
        a = i
