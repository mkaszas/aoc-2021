(algo img) ← '#'={(⊃⍵) (↑2↓⍵)} ⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/20.txt' 1

step ← {algo[1+(⍺⍺⌺3 3)0(,∘⌽∘⍉⍣4)⍵]}
steps ← {{2⊥,~⍵}step ~{2⊥,⍵}step ⍵}

part1 ← +/,steps img ⍝ 5461
part2 ← +/,(steps⍣25) img ⍝ 18226
