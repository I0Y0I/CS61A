def count_partitions(n, k):
    if n < k:
        return 0
    if k == 1:
        return n
    return count_partitions(n-k, k) + count_partitions(n, k-1)
