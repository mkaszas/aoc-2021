data ← ⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/02.txt' 1


part1 ← {
    parse ← {(⍺(⊃⍷)⍵)×⍎⊃⌽⍵}

    directions ← 'up' 'down' 'forward'
    (up down forward) ← directions ∘.{+/(⊂⍺)parse¨⍵} ⊂⍵

    forward × down - up
}


part1 data ⍝ 1480518
