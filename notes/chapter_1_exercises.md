# Exercises Answers (and questions) for Chapter 1

## Exercise 1
- 1a has good notation and is true.
- 1b is not valid mathematical notation.
- 1c is valid notation and we went back and forth on this one a bit. `(1, (2, 1)) = ((1, 2), 1)` is the question. 
    - This is valid mathematical notation
    - If this were programming notation, this would be false... but we're not programming.
    - If we treat these as variables where `a = (1)`, `b = 2`, and `c = 1` then let's consider the following stacked vector notation
        - `(a, (b, c)) = ((a, b), c)` works out to be the same stacked vector, so this is true.

## Exercise 2.
- 2a is valid because we're adding/subtracting 3 vectors of the same size
- 2b where we have `(a, b, c[3:13])` is valid because it's a stacked vector and the vectors we're stacking don't need to have the same size
- 2c is invalid because the vectors have different sizes
- 2d is valid
- 2e is valid
- 2f is invalid because of the invalid vector notation (the in-line square brackets are not valid)
- 2g is valid

## Exercise 3
- 3a has correct notation and is true (because of the context of the 0 vector being able to take on the size it needs to)
- 3b is correct notation but false, because the sizes of the vectors will be different
- 3c is correct notation and true, but it's ambiguous
- 3d is valid notation but false, because while 0 can take on the size it needs to, if we remove it, the statement is `a = b` and those vectors have different sizes

## Exercise 4
- 4a is `w = (d, d, d, d, d, d, d)` because the `w` vector is composed of 7 identical vectors `d`.
- 4b is <img src="https://render.githubusercontent.com/render/math?math=w_{1:24}">