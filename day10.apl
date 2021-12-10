data ← ⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/10.txt' 1


pairs ← '()' '[]' '{}' '<>'
pairMask ← {(⊃,{2∨/⍵})⊃+/(⊢⍷(⍵⍨))¨ pairs}
clean ← {(~pairMask ⍵)/⍵}⍣≡

(opening closing) ← '([{<' ')]}>'

middle ← ⊃∘({(¯1+≢⍵)÷2}↓⊢)(⊂∘⍋⌷⊢)


part1 ← {
    points ← 3 57 1197 25137

    firstClosing ← {⊃(⍵∊closing)/⍵}
    toPoint ← {(closing ∊ ⍵) / points}

    +/⊃,/(toPoint∘firstClosing clean)¨ ⍵
}


part2 ← {
    toPoint ← {(opening ∊ ⍵)/(⍳4)}
    closingScore ← {⊃{⍺+5×⍵}/ toPoint¨ clean ⍵}

    middle ⊃,/closingScore¨ ⍵
}


part1 data ⍝ 464991
part2 data ⍝ 3662008566
