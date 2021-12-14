data ← ⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/14.txt' 1

parseRules ← {{(⍵∊⎕a)⊆⍵}¨2↓⍵}
findNext ← {⊃⌽⊃(⍸(⊂⍺)⍷⊃¨⍵)⌷⍵}

freq ← {1+≢¨(0,2=/s)⊆s←(⊂∘⍋⌷⊢)⍵}

part1 ← {
    d ← ⍵
    str ← ({(⊃⍵),⊃,/(2{((⍺ ⍵) findNext (parseRules d)),⍵}/⍵)}⍣10) d
    (⌈/-⌊/) freq str
}


part1 data ⍝ 3247
