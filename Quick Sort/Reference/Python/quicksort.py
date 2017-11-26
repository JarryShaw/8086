def quicksort(A, p, r):
    if p < r:
        # print '\ncall partition'
        # print 'p = ', p
        # print 'r = ', r
        q = partition(A, p, r)
        # print 'q = ', q

        # print '\ncall left quicksort'
        # print 'p = ', p
        # print 'r = q-1 = ', q-1
        quicksort(A, p, q-1)

        # print '\ncall right quicksort'
        # print 'p = q+1 = ', q+1
        # print 'r = ', r
        quicksort(A, q+1, r)

def partition(A, p, r):
    x = A[r]
    # print 'x = ', x
    i = p - 1
    for j in range(p, r):
        if A[j] <= x:
            i += 1
            A[i], A[j] = A[j], A[i]
    A[i+1], A[r] = A[r], A[i+1]
    return i+1

if __name__ == '__main__':
    A = [ 24,  23,  22,  21,  20,\
          19,  18,  17,  16,  15,\
          14,  13,  12,  11,  10,\
           9,   8,   7,   6,   5,\
           4,   3,   2,   1,   0,\
          -1,  -2,  -3,  -4,  -5,\
          -6,  -7,  -8,  -9, -10,\
         -11, -12, -13, -14, -15,\
         -16, -17, -18, -19, -20,\
         -21, -22, -23, -24, -25 ]
    
    quicksort(A, 0, 49)

    for num in A:
        print format(num, '02x'), '\t',
        