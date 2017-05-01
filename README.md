# Quick Sort in 8086 (Assembly Language)



* Capable with emu8086.

* Quick sort fifty (50, in default) 16-bit signed integers ascendingly and in place.

* Numbers can be changed as user's wish and the amount can be altered also, but parameters should be therfore modified as following:

  ```assembly
  ;CALL QUICKSORT(A, 0, A.LENGTH).
      mov  p, 0
      mov  r, 49		;r=49 in 50 elements, for instance
      call quicksort
  ```

* Some pseudocode comments are added to help understand the codes.

* Bugs might exist. Once discovered, do please leave a comment.