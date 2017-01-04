import Test.QuickCheck

lbl :: String -> String -> String -> [String]
lbl [] [] prefix = [prefix]
lbl _ [] prefix = [prefix]
lbl [] _ prefix = [prefix]
lbl (a:as) (b:bs) prefix = if (length (a:as) /=  length (b:bs)) then [[]] else ((prefix++(a:as)):(lbl as bs (prefix++([b]))))  

-- show
-- main = verboseCheck (\s -> \t -> ((length s /= length t) || s == (head(lbl s t ""))))
main = verboseCheck (\s -> \t -> (s == (head(lbl s t ""))))
-- main = verboseCheck (\s -> \t -> (length s == length t) ==> (s == (head(lbl s t ""))))
-- /show