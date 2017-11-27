//
//  quicksort.c
//  QuickSort_C
//
//  Created by Jarry Shaw on 11/26/2017.
//  Copyright © 2017 Jarry Shaw. All rights reserved.
//

#include <stdio.h>

void quickSort(int * A, int p, int r);
int  partition(int * A, int p, int r);

int main(int argc, const char * argv[]) {
    int A[50] = { 24,  23,  22,  21,  20,\
                  19,  18,  17,  16,  15,\
                  14,  13,  12,  11,  10,\
                   9,   8,   7,   6,   5,\
                   4,   3,   2,   1,   0,\
                  -1,  -2,  -3,  -4,  -5,\
                  -6,  -7,  -8,  -9, -10,\
                 -11, -12, -13, -14, -15,\
                 -16, -17, -18, -19, -20,\
                 -21, -22, -23, -24, -25 };

    quickSort(A, 0, 49);

    for (int ctr=0; ctr<50; ctr++)    {
        printf("%x\t", A[ctr]);
    }

    printf("\n");
    return 0;
}

void quickSort(int * A, int p, int r)    {
    if (p < r)  {
        int q = partition(A, p, r);
        quickSort(A, p, q-1);
        quickSort(A, q+1, r);
    }
}

int partition(int * A, int p, int r)    {
    int x = A[r];
    int i = p - 1;

    for (int j=p; j<r; j++) {
        if (A[j] <= x)  {
            i = i + 1;

            int tmp1 = A[i];
            A[i] = A[j];
            A[j] = tmp1;
        }
    }

    int tmp2 = A[i+1];
    A[i+1] = A[r];
    A[r] = tmp2;

    return (i+1);
}
