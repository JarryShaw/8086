# Quick Sort in 8086



* Capable with emu8086.

* Quick sort fifty (50, in default) 16-bit signed integers (like `XXXXH`) ascendingly and in place.

* Numbers can be changed as user's wish and the amount can be altered also, but the parameters should be therfore modified as following:

  ```assembly
  data segment

      ;-----------------------------------------
      ;ARRAY OF N INTEGERS.
      arr dw  ?	;N INTERGERS
      ;-----------------------------------------

      i   dw  ? 
      j   dw  ?
      p   dw  0	;START OF THE ARRAY, EQUALS TO 0.
      r   dw  N-1	;END OF THE ARRAY, EQUALS TO N-1.
      q   dw  ?
      x   dw  ?

  ends
  ```

* Some pseudocode comments are added to help understand the codes.

* Codes in Python, C++, Swift languages, along with their assembly sources (of the latter two) are also attached as Reference; and the terminal commands to compile those shown as blow:

  ```shell
  $ gcc -S -O0 -m32 quicksort.cpp -o quicksort_cpp.s
  $ swiftc -S -Onone quicksort.swift --> quicksort_swift.s
  ```

* Bugs might exist. Once discovered, do please leave a comment.

