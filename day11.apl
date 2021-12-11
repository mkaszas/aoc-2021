data ← ⍎¨↑⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/11.txt' 1


flashes ← ({2 2⌷⍵∊10 0:0 ⋄ 10⌊(2 2⌷⍵)++/,10=⍵}⌺3 3)⍣≡

step ← {
    (i n board) ← ⍵
    nextBoard ← flashes 1+board
    (i+1) (n ++/,0=nextBoard) nextBoard
}

part1 ← {2⌷(step⍣100) 0 0 ⍵}

part2 ← {⊃(step⍣{∧/,0=⊃¯1↑⍺}) 0 0 ⍵}


part1 data ⍝ 1739
part2 data ⍝ 324
