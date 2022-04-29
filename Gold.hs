-- There is one Haskell module per source file. A module consists of definitions.
module Gold where

  -- The golden ratio
    -- This is a definition of the constant phi, with an accompanying type annotation (also known as a type signature)
    -- phi :: Double. The type annotation means that phi has type Double. The line with a equals sign (=) is called an
    -- equation. The left hand side of the = is the expression we are defining, and the right hand side of the = is the
    -- definition.
      --In general a definition (of a function or constant) consists of an optional type annotation and one or more
      -- equations
  phi :: Double
  phi = (sqrt 5 + 1) / 2

  -- This is the definition of a function called polynomial. It has a type annotation and an equation. Note how an
  -- equation for a function differs from the equation of a constant by the presence of a parameter x left of the =
  -- sign. Note also that ^ is the power operator in Haskell, not bitwise xor like in many other languages.
  polynomial :: Double -> Double
  polynomial x = x^2 - x - 1

  -- This is the definition of a function called f. Note the lack of type annotation. What is the type of f?
  f x = polynomial (polynomial x)

 -- This is a description of what happens when you run the program. It uses do-syntax and the IO Monad.
  main = do
    print (polynomial phi)
    print (f phi)