; Suppose we evaluate the expression (list 1 (list 2 (list 3 4))). 
; Give the result printed by the interpreter, 
; the corresponding box-and-pointer structure, 
; and the interpretation of this as a tree (as in Figure 2.6).

#lang sicp

(list 1 (list 2 (list 3 4)))

(1 (2 (3 4)))

[Box1] -> [Box2] -> [Box3]
[a1 b1]   [a2 b2]   [a3 b3]
1 <- [a1 b2] -> [Box2]
2 <- [a2 b2] -> [Box3]
3 <- [a3 b3] -> 4

         ___x___
        |       |
        1      _._
              |   |
              2  _._
                |   |
                3   4