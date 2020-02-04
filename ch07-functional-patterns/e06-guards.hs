{-# LANGUAGE NoMonomorphismRestriction #-}

myAbs :: Integer -> Integer
myAbs x
  | x < 0     = (negate x)
  | otherwise = x


-- Sodium levels in the blood.
bloodNa :: Int -> String
bloodNa x
  | x < 135   = "too low"
  | x > 145   = "too high"
  | otherwise = "just right"


isRightTriangle :: (Num a, Eq a) => a -> a -> a -> String
isRightTriangle a b c
  | a ^ 2 + b ^ 2 == c ^ 2 = "RIGHT ON"
  | otherwise              = "not right"

dogYears :: Int -> Int
dogYears y
  | y <= 0    = 0
  | y <= 1    = y * 15
  | y <= 2    = y * 12
  | y <= 4    = y * 8
  | otherwise = y * 6


avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x
  | y >= 0.9  = 'A'
  | y >= 0.8  = 'B'
  | y >= 0.7  = 'C'
  | y >= 0.59 = 'D'
  | y <  0.59 = 'F'
  where y = (/) x 100
