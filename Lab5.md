```
pmean("specdata", "sulfate", 1:10)
pmean("specdata", "sulfate", 55)
pmean("specdata", "nitrate")

[1] 3.806771
[1] 3.587319
[1] 1.584008
```
----------------------------------------------------------------
```
complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 50:60)

  id nobs
1  1  117


  id nobs
1  2 1041
2  4  474
3  8  192
4 10  148
5 12   96


   id nobs
1  50  459
2  51  193
3  52  812
4  53  342
5  54  219
6  55  372
7  56  642
8  57  452
9  58  391
10 59  445
11 60  448
```
------------------------------------------------------------------------
```
cr <- corr("specdata", 150)
head(cr); summary(cr)

cr <- corr("specdata", 400)
head(cr); summary(cr)

cr <- corr("specdata", 5000)
head(cr); length(cr) ; class(cr)

[1] -0.01895754 -0.14051254 -0.04389737 -0.06815956 -0.12350667
[6] -0.07588814
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.21057 -0.04999  0.09463  0.12525  0.26844  0.76313 


[1] -0.01895754 -0.04389737 -0.06815956 -0.07588814  0.76312884
[6] -0.15782860
    Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
-0.17623 -0.03109  0.10021  0.13969  0.26849  0.76313 


numeric(0)
[1] 0
[1] "numeric"
```
