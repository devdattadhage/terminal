How many directors has Shah Rukh Khan worked with?

```
cut -f5 -d',' srkMovies.csv >> allDirectors
cut -f6 -d',' srkMovies.csv >> allDirectors
sort allDirectors | uniq > result
```

Which director has SRK worked the most with?
`sort allDirectors| uniq -c | sort`

What is the most frequently occurring first word amongst all the movie titles in which SRK has acted?

```
01_sort_cut_uniq % cut -f1 -d',' srkMovies.csv | cut -f1 -d' ' | sort | uniq -c | sort
```

Most frequently occurring word in SRK titles. Amongst ALL the words.

```
cut -f1 -d',' srkMovies.csv | cut -f1 -d' ' > allwords
cut -f1 -d',' srkMovies.csv | cut -f2 -d' ' >> allwords
cut -f1 -d',' srkMovies.csv | cut -f3 -d' ' >> allwords
cut -f1 -d',' srkMovies.csv | cut -f4 -d' ' >> allwords
sort allwords | uniq -c | sort
```
