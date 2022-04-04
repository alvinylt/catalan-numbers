# Catalan Number Sequence Generator

This repository demonstrates different ways to generate Catalan number terms with Haskell.

Recursions in functional programming may have extremely long computing time. In `CatalanNumber.hs`, the function is defined by the implicit definition of the sequence. The computation time gets noticably long starting from around the 12th term.

Using factorials to form the explicit definition of the sequence, `catalanNumberFactorial` runs much faster than `catalanNumber`.

Reference: https://en.wikipedia.org/wiki/Catalan_number