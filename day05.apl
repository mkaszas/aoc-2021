data ← ⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/05.txt' 1

parsePoints ← {⍎⍵~'->'}¨


onGrid ← {
    (x1 y1 x2 y2) ← ⍵
    (x1=x2)∨(y1=y2)
}

r ← {,⍺↓⍳(1+⍵)}

sectionPoints ← {
    (x1 y1 x2 y2) ← ⍵
    (x1 y1 r x2 y2),(x2 y2 r x1 y1)
}


part1 ← {
    sections ← {(onGrid¨ ⍵) / ⍵} (parsePoints ⍵)
    points ← (⊂∘⍋⌷⊢) ⊃,/sectionPoints¨ sections
    ≢(0,2≡/points)⊆points
}


part1 data ⍝ 5774
