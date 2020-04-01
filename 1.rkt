#lang pie

'atom
'ratatouille
'is-it-obvious-that-this-is-an-atom
'---
#| --- |#
#| ' |#
'Atom
#| 'at0m |#
'cœurs-d-artichauts
'ἄτομον

#|

  # The Law of Tick Marks
  A tick mark directly followed by one or more letters and hyphens in an `Atom`.

|#

#|

  # The 4 Forms of Judgement:
  1. ____ is a ____. (the ____ ____)
  2. ____ is the same ____ as ____.
  3. ____ is a type.
  4. ____ and ____ are the same type.

|#

#|

  # The Commandment of Tick Marks
  Two expressions are the same `Atom` if their values are tick marks followed
  by identical letters and hyphens

|#

#| (cons 'ratatouille 'baguette) |#

#| (the (Pair Atom Atom) |#
#|      (cons 'spinach 'cauliflower)) |#

#|
  # The Law of `Atom`
  `Atom` is a type
|#

;; > Judgements are acts of knowning, and believing is part of knowning.
;; > Some forms of judgement only make sense after an earlier judgement.

#|

  # Normal Forms
  Given a type, every expression described by that type has a *normal form*,
  which is the most direct way of writing it.
  If two expressions are the same, then have identical normal forms, and
  if they have identical normal forms, then they are the same.

  # Normal Forms and Types
  Sameness is always according to a type, so normal forms are also determined
  by a type.

|#

#|

  # The 1st Commandment of `cons`
  Two `cons`-expressions are the same (`Pair` A D)
  if their **car**s are the same A
  and their **cdr**s are the same D.
  (Here, A and D stand for any type.)

|#

#|

  # Nomral Forms of Types
  Every expression that is a type has a normal form, which is the most
  direct way of writing that type. If two expressions are the same
  type, then they have identical normal forms, and if two types have
  identical normal forms, then they are the same type.

|#

(claim one Nat)
(claim two Nat)
(claim three Nat)
(claim four Nat)
(define one (add1 zero))
(define two (add1 one))
(define four (add1
               (add1
                 (add1
                   (add1 zero)))))
one
two
four

#|

  # Claims before Definitions
  Using `define` to associate a name with an expression requires that
  the expression's type has previously been associated with the name
  using `claim`

|#

#|

  # Values
  An expression with a constructor at the top is called a *value*

  # Values and Normal Forms
  Not every value is in normal form. This is because the arguments to
  constructor need not be normal. Each expression has only one normal
  form, but it is sometimes posiible to write it as a value in more
  than one way.

|#

(+ (add1
     (add1 zero))
   (add1 zero))

#|

  # Everything Is an Expression
  In Pie, values are also expressions. Evaluation in Pie finds an
  expression, not some other kind of thing.

|#

#|

  # The Commandment of `zero`
  `zero` is the same `Nat` as `zero`

  # The Commandment of `add1`
  If n is the same `Nat` as k, then (`add1` n) is the same `Nat`
  as (`add1` k)

|#

#|

  # Definitions Are Forever
  Once a name has been `calim`ed, it cannot be re`claim`ed, and
  once a name has been `define`d, it cannot be re`define`d.

|#
