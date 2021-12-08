data ← ⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/08.txt' 1

parseOut ← {' '(≠⊆⊢)⊃⌽'|'(≠⊆⊢)⍵}

easyNumbers ← 2 4 3 7
countEasy ← {+/∊∘easyNumbers≢¨⍵}

part1 ← +/(countEasy parseOut)¨


part1 data ⍝ 365
