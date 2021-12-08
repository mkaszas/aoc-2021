data ← ⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/08.txt' 1

parseOut ← {' '(≠⊆⊢)⊃⌽'|'(≠⊆⊢)⍵}
parseBoth ← {(' '∘(≠⊆⊢))¨'|'(≠⊆⊢)⍵}


easyNumbers ← 2 4 3 7
countEasy ← {+/∊∘easyNumbers≢¨⍵}

part1 ← +/(countEasy parseOut)¨


letters ← 'abcdefg'
freq ← {+⌿↑(letters∘∊)¨ ⍵}
sumFreq ← {+/(⌷∘⍺)¨ (letters ⍸ ⍵)}

digits ← 42 17 34 39 30 37 41 25 49 45
resolve ← ¯1 + digits∘⍳

solveSignal ← {
    (sig out) ← ⍵
    10 ⊥ resolve¨ {(freq sig) sumFreq ⍵}¨ out
}

part2 ← { +/(solveSignal parseBoth)¨ ⍵ }


part1 data ⍝ 365
part2 data ⍝ 975706
