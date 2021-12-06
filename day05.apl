data ← ⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/05.txt' 1

parsePoints ← {⍎⍵~'->'}¨

r ← {,⍺↓⍳(1+⍵)}
coordR ← {⍺<⍵:(⍺ r ⍵) ⋄ ⌽(⍵ r ⍺)}


sectionPoints ← {
    (x1 y1 x2 y2) ← ⍵
    (x1 coordR x2) ,¨ (y1 coordR y2)
}

overlappingPoints ← {
    points ← (⊂∘⍋⌷⊢) ⊃,/sectionPoints¨ ⍵
    ≢(0,2≡/points)⊆points
}


onGrid ← {
    (x1 y1 x2 y2) ← ⍵
    (x1=x2)∨(y1=y2)
}

part1 ← {
    overlappingPoints {(onGrid¨ ⍵) / ⍵} (parsePoints ⍵)
}


part2 ← overlappingPoints parsePoints


part1 data ⍝ 5774
part2 data ⍝ 18423
