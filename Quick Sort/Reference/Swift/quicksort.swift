//
//  quicksort.swift
//  QuickSort_Swift
//
//  Created by Jarry Shaw on 5/1/17.
//  Copyright © 2017 Jarry Shaw. All rights reserved.
//

import Foundation

func quickSort(A: inout [Int], p: Int, r: Int)  {
    if (p < r)  {
        let q = partition(A: &A, p: p, r: r)
        quickSort(A: &A, p: p, r: q-1)
        quickSort(A: &A, p: q+1, r: r)
    }
}

func partition(A: inout [Int], p: Int, r: Int) -> Int   {
    let x = A[r]
    var i = p - 1

    for j in p..<r  {
        if A[j] <= x    {
            i = i + 1

            let tmp1 = A[i]
            A[i] = A[j]
            A[j] = tmp1
        }
    }

    let tmp2 = A[i+1]
    A[i+1] = A[r]
    A[r] = tmp2

    return (i+1)
}

var A: [Int] = [ 24,  23,  22,  21,  20,
                 19,  18,  17,  16,  15, 
                 14,  13,  12,  11,  10, 
                  9,   8,   7,   6,   5, 
                  4,   3,   2,   1,   0, 
                 -1,  -2,  -3,  -4,  -5, 
                 -6,  -7,  -8,  -9, -10, 
                -11, -12, -13, -14, -15, 
                -16, -17, -18, -19, -20, 
                -21, -22, -23, -24, -25 ]

quickSort(A: &A, p: 0, r: 49)

print(A)
