data ← {(⍎¨⊃⍵) ((('x|y'⎕s'&'),{⊂⍎⊃('\d+'⎕s'&')⍵})¨⊃⌽⍵)}({~0=≢¨⍵}⊆⊢)⊃⎕NGET'/Users/mate/sandbox/aoc-2021/input/13.txt' 1

toMatrix ← {⍉(1@(1+⊃⍵))(0 2+⊃⌈/1+⊃⍵)⍴0}
foldY ← {(⍺↑⍵)∨(↑⌽↓(⍺+1)↓⍵)}
fold ← {(d i) ← ⍺ ⋄ d='y':i foldY ⍵ ⋄ ⍉i foldY ⍉⍵}

part1 ← {+/,(⊃⊃⌽⍵) fold toMatrix ⍵}

part2 ← {' █'[1+⊃fold/{⍵,⊂(toMatrix d)}⌽⊃⌽d←⍵]}


part1 data ⍝ 790
part2 data ⍝ PGHZBFJC
⍝ ███   ██  █  █ ████ ███  ████   ██  ██  
⍝ █  █ █  █ █  █    █ █  █ █       █ █  █ 
⍝ █  █ █    ████   █  ███  ███     █ █    
⍝ ███  █ ██ █  █  █   █  █ █       █ █    
⍝ █    █  █ █  █ █    █  █ █    █  █ █  █ 
⍝ █     ███ █  █ ████ ███  █     ██   ██  
