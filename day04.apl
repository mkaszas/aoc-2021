data ← ⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/04.txt' 1

order ← ⍎⊃
boards ← {(↑⍎¨)¨(≢¨⊆⊢)1↓⍵


checkWinner ← ¯1 ∊ (×⌿,×/)

play ← {
    number ← ⊃⍺
    markedBoards ← (¯1@(number∘=))¨ ⍵
    winner ← checkWinner¨ markedBoards
    +/winner:number,winner/markedBoards
    (1↓⍺)∇markedBoards
}


part1 ← {
    (lastN board) ← (order play boards) ⍵
    lastN × +/+/0@(¯1∘=)board
}


part1 data ⍝ 58374
