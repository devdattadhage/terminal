Which hour of which day saw the most number of commits?

```
cut -f3 -d',' all_commits.csv |cut -f1,2 -d' ' >> datehour
sort -t' ' -k1,2 datehour |cut -f1 -d':' | sort | uniq -c | sort
```

Find out who has the most number of commits?
`cut -f2 -d',' all_commits.csv | sort | uniq -c | sort`

How many different days did the commits happen on? Which day had the most
number of commits ?

`cut -f3 -d',' all_commits.csv |cut -f1 -d' ' | sort | uniq -c | sort`
