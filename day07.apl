data ← ⍎⊃⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/07.txt' 1

part1 ← {⌊/+/⍵∘.(|-)⍵}


range ← {1-⍨((⌊/⍵)↓⍳(1+⌈/⍵))}

part2 ← {⌊/+/(range ⍵)∘.(+/(⍳(|-)))⍵}


part1 data ⍝ 356922
part2 data ⍝ 100347031
