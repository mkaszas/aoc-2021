data ← ⍎¨↑⊃⎕NGET '/Users/mate/sandbox/aoc-2021/input/03.txt' 1


part1 ← {
    epsilon ← ~gamma ← (≢<2×+⌿) ⍵

    epsilon ×⍥(2∘⊥) gamma
}


findLSValue ← {
    ⍺ ← 1

    column ← ⍺⌷⍉⍵
    filter ← column = (≢⍵)⍺⍺2×+/column
    rows ← filter ⌿ ⍵

    1=≢rows:,rows

    (⍺+1)∇rows
}

part2 ← {
    o ← ≤findLSValue ⍵
    co2 ← >findLSValue ⍵

    o ×⍥(2∘⊥) co2
}


part1 data ⍝ 2972336
part2 data ⍝ 3368358
