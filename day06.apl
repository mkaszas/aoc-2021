data ← ⍎⊃⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/06.txt' 1


next ← {⍵=0:6 8 ⋄ ⍵-1}

gen ← {⍺=0:⍵ ⋄ (⍺-1)∇(⊃,/next¨⍵)}

part1 ← ≢(80∘gen)


shift ← 1∘↓,⊃
addNewGen ← {((9⌷⍵)∘+@7) ⍵}

gen2 ← {⍺=0:+/⍵ ⋄ (⍺-1)∇(addNewGen shift ⍵)}

part2 ← {
    d_ ← ⍵
    freq ← {+/⍵=d_}¨(1-⍨⍳9)
    256 gen2 freq
}


part1 data ⍝ 356190
part2 data ⍝ 1617359101538
