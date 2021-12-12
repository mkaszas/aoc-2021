data ← (⊢,⌽¨)((~'-'∘⍷)⊆⊢)¨⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/12.txt' 1


nextPoints ← {a←⍺⋄(⊃⌽)¨ ⍵[⍸{a≡⊃⍵}¨ ⍵]}
nextPaths ← {
    (⊃⌽⍵)≡'end':⊂⍵
    {p,⊂⍵}¨ {((⊃⌽⍵)nextPoints data)~((~{∧/⍵∊⎕A}¨⍵)/⍵)} p ← ⍵
}
step ← {⊃,/nextPaths¨ ⍵}

part1 ← ≢(step⍣≡) ⊂⊂'start'


restrictedPoints ← {
    smallCaves ← {(~{∧/⍵∊⎕A}¨⍵)/⍵} ⍵
    ∨/2=/(⊂∘⍋⌷⊢)(⊢⍳⊢)smallCaves:smallCaves
    ⊂'start'
}

nextPaths2 ← {
    (⊃⌽⍵)≡'end':⊂⍵
    {p,⊂⍵}¨ {((⊃⌽⍵)nextPoints data)~(restrictedPoints ⍵)} p ← ⍵
}

step2 ← {⊃,/nextPaths2¨ ⍵}

part2 ← ≢(step2⍣≡) ⊂⊂'start'


part1 ⍝ 4338
part2 ⍝ 114189
