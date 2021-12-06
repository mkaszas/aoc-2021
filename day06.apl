data ← ⍎⊃⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/06.txt' 1


next ← {⍵=0:6 8 ⋄ ⍵-1}

gen ← {⍺=0:⍵ ⋄ (⍺-1)∇(⊃,/next¨⍵)}

part1 ← ≢(80∘gen)


part1 data ⍝ 356190

