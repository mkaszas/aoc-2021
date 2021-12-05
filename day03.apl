data ← ⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/03.txt' 1


part1 ← {
    gamma ← (≢<2×+⌿) ('1'=↑⍵)
    (2⊥gamma) × (2⊥~gamma)
}


part1 data ⍝ 2972336

