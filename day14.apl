data ← ⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/14.txt' 1

letters ← ∪⊃,/pairs ← ⊃¨rules ← {(⍵∊⎕a)⊆⍵}¨2↓data
nextFreq ← {((s e) m)←⍵⋄(s,⊃m) +⍥{(⊂⍵)⍷pairs} ((⊃m),e)}¨ rules
letterScores ← {(⊃⌽⍵)⍷letters}¨pairs
startingFreq ← ⊃+/{(⊂⍵)⍷pairs}¨2,/⊃data

solve ← {(⌈/-⌊/) ((⊃⊃data)⍷letters)++⌿↑letterScores×({+⌿↑⍵×nextFreq}⍣⍵) startingFreq}

⎕ ← part1 ← solve 10 ⍝ 3247
⎕ ← part2 ← solve 40 ⍝ 4110568157153
