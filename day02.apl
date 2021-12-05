data ← ⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/02.txt' 1

parse ← {(⍺(⊃⍷)⍵)×⍎⊃⌽⍵}
directions ← 'up' 'down' 'forward'


part1 ← {
    (up down forward) ← directions ∘.{+/(⊂⍺)parse¨⍵} ⊂⍵

    forward × down - up
}


part2 ← {
    (up down forward) ← directions ∘.{(⊂⍺)parse¨⍵} ⊂⍵

    horizontal ← +/forward
    depth ← +/ forward × down {+\⍺ - ⍵} up

    horizontal × depth
}


part1 data ⍝ 1480518
part2 data ⍝ 1282809906
