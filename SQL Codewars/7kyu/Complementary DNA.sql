-- Description
-- Deoxyribonucleic acid (DNA) is a chemical found in the nucleus of cells and carries the "instructions" for the development 
-- and functioning of living organisms.
-- If you want to know more: http://en.wikipedia.org/wiki/DNA
-- In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". Your function receives one side of the DNA 
-- (string, except for Haskell); you need to return the other complementary side. DNA strand is never empty or there is no DNA 
-- at all (again, except for Haskell).
-- More similar exercise are found here: http://rosalind.info/problems/list-view/ (source)
-- Example: (input --> output)
-- "ATTGC" --> "TAACG"
-- "GTAT" --> "CATA"
-- write your SQL statement here: you are given a table 'dnastrand' with column 'dna', 
-- return a table with column 'dna' and your result in a column named 'res'.
SELECT
    dna,
    TRANSLATE(dna, 'ATGC', 'TACG') AS res
FROM
    dnastrand;