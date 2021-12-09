data ← ⍎¨↑⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/09.txt' 1

checkLine ← ∧/((⊃,⊃∘⌽)((0∘=⊣)∨>)2∘⌷)
checkNeighbours ← (checkLine (2∘⌷⍉))∧(checkLine 2∘⌷)
riskLevel ← 2 2∘⌷ × checkNeighbours

part1 ← {
    +/,((riskLevel⊢)⌺3 3)1+⍵
}



step ← {
    x ← 2 2⌷⍵
    x≠0:x
    ⌈/(2∘⌷,(2∘⌷⍉)) ⍵
}

part2 ← {
    lowPointMap ← ↑((checkNeighbours⊢)⌺3 3)1+⍵
    start ← ({9=⍵:¯1⋄0}¨ ⍵) + {((⍳≢⍸⍵)@(⍸⍵)) ⍵} lowPointMap
    filled ← ((step⌺3 3)⍣≡) start

    ×/3↑(⊂∘⍒⌷⊢)≢¨1↓{⍵⊂⍨1,2≠/⍵}(⊂∘⍋⌷⊢),filled
}


part1 data ⍝ 537
part2 data ⍝ 1142757
