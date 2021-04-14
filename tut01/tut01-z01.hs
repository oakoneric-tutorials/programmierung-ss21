countBinTrees :: Int -> Int
countBinTrees 0 = 0
countBinTrees 1 = 1
countBinTrees n = go (n-1)
    where
        go 0 = 0
        go m = go (m-1) + countBinTrees (n - 1 - m) * countBinTrees m

{-
    Das wird anschaulich, wenn man einen Funktionsaufruf auswertet, z.B. countBinTrees 7
    countBinTrees 7
    = go 6
    = go 5 + countBinTrees (7-1-6) * countBinTrees 6 
    = go 5 + countBinTrees 0 * countBinTrees 6
    = go 4 + countBinTrees (7-1-5) * countBinTrees 5 + countBinTrees 0 * countBinTrees 6
    = go 4 + countBinTrees 1 * countBinTrees 5 + countBinTrees 0 * countBinTrees 6
    = go 3 + countBinTrees 2 * countBinTrees 4 + countBinTrees 1 * countBinTrees 5 + countBinTrees 0 * countBinTrees 6
    = ...
    Wir starten also mit 7 Knoten, einer davon wird der Wurzelknoten und die anderen 6 werden auf die beiden Kinder verteilt.
    Wie "go"-Funktion geht alle Möglichkeiten durch, wie die 6 Knoten in den linken und rechten Teilbaum verteilt werden.
-}