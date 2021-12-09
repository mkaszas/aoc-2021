data ← ⍎¨↑⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/09.txt' 1

checkLine ← ∧/((⊃,⊃∘⌽)((0∘=⊣)∨>)2∘⌷)
checkNeighbours ← (checkLine (2∘⌷⍉))∧(checkLine 2∘⌷)
riskLevel ← 2 2∘⌷ × checkNeighbours

part1 ← {
    +/,((riskLevel⊢)⌺3 3)1+⍵
}


part1 data ⍝ 537
