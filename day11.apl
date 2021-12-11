data ← ⍎¨↑⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/11.txt' 1


flashes ← ({2 2⌷⍵∊10 0:0 ⋄ 10⌊(2 2⌷⍵)++/,10=⍵}⌺3 3)⍣≡

step ← {
    (n board) ← ⍵
    nextBoard ← flashes 1+board
    (n ++/,0=nextBoard) nextBoard
}

part1 ← {⊃(step⍣100) 0 ⍵}

part1 data ⍝ 1739
