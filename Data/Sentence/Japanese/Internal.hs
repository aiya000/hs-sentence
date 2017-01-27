-- | General logics
module Data.Sentence.Japanese.Internal
  ( applyWhen
  , isAlphaNum'
  ) where

-- | Apply the function if given Bool is True
applyWhen :: Bool -> (a -> a) -> a -> a
applyWhen b f x = if b then f x else x

-- |
-- Instead of Data.Char.isAlphaNum, for strict alpha nums.
-- (`isAlphaNum 'あ'` returns True, why ?)
isAlphaNum' :: Char -> Bool
isAlphaNum' c = c `elem` ['A'..'Z']
             || c `elem` ['a'..'z']
             || c `elem` ['0'..'9']
