data ← ⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/10.txt' 1


pairs ← '()' '[]' '{}' '<>'
pairMask ← {0,2∨/⊃+/(⊢⍷(⍵⍨))¨ pairs}
clean ← {(~pairMask ⍵)/⍵}⍣≡

closing ← ')]}>'
points ← 3 57 1197 25137
firstClosing ← {⊃(⍵∊closing)/⍵}
toPoint ← {(closing ∊ ⍵) / points}


part1 ← {+/⊃,/(toPoint∘firstClosing clean)¨ ⍵}


part1 data ⍝ 464991
