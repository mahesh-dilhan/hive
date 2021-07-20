
//read lines first 
SELECT words, count(1)
FROM textfile
LATERAL VIEW EXPLODE(SPLIT(line, ' ')) expl_words AS words
GROUP BY words;
