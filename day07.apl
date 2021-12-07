data ← ⍎⊃⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/07.txt' 1

part1 ← {⌊/+/⍵∘.(|-)⍵}


part1 data ⍝ 356922
