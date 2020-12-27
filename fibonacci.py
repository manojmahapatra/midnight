// The fibonacci numbers, commonly denoted as F(n) form a sequence, called the Fibonacci sequence.
// Write an algorithm for Fibonacci sequence
// time: O(n), space: O(n)

def fib(n):
    """
    :type n: int
    :rtype: int
    """
    if n <= 1:
        return n
    return memoize(n)

def memoize(n):
    """
    :type n: int
    :rtype: int
    """
    cache = {0: 0, 1: 1}
    for i in range(2, n+1):
        cache[i] = cache[i-1] + cache[i-2]
    return cache[n]
