# Keyboard Interrupt in 8086



* Capable with IBM-PC Emulator, using 8086, 8253 and 8259.

  > 8086 - Microprocessor
  >
  > 8253 - Programmable Interval Timer (PIT)
  >
  > 8259 - Programmable Interrupt Controller (PIC)

* Overwrite `INT 08H` and `INT 09H` for the following function:

  * Respond to no keyboard interrupt for 10s.

  * Print input from keyboard with Caeser Encryption for 10s.

    > Caeser Encryption:
    >
    > ​        for key ∈ a~z, output = (key + 1) mod 26
    >
    > ​
    >
    > e.g.    a —> b    b —> c    …    z —> a

  * Repeat the steps above.

  * Plus, terminate program but stay resident, i.e. `INT 27H`.

* Bugs might exist. Once discovered, do please leave a comment.

