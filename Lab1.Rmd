# 1. Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.
```{r, eval = True}
ch <- "Hello World!"
num <- 100.5
integ <- 5L
comp <- 1 - 5i
lg <- T
class(ch)
class(num)
class(integ)
class(comp)
class(lg)
``` 
[1] "character"   
[1] "numeric"  
[1] "integer"  
[1] "complex"  
[1] "logical"  
# 2. Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.
```{r}
first <- 5:75
second <- c(3.14, 2.71, 0, 13)
third <- rep(T,100)
print(first)
print(second)
print(third)
```
 [1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23  
[20] 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42  
[39] 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61  
[58] 62 63 64 65 66 67 68 69 70 71 72 73 74 75  
[1]  3.14  2.71  0.00 13.00  
  [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE  
 [12] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE  
 [23] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE  
 [34] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE  
 [45] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE  
 [56] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE  
 [67] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE  
 [78] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE  
 [89] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE  
[100] TRUE  
# 3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind
```{r}
a <- c(0.5, 3.9, 0, 2)
b <- c(1.3, 131, 2.2, 7)
c <- c(3.5, 2.8, 4.6, 5.1)
matr <- cbind(a,b,c)
print(matr)
```
       a     b   c  
[1,] 0.5   1.3 3.5  
[2,] 3.9 131.0 2.8  
[3,] 0.0   2.2 4.6  
[4,] 2.0   7.0 5.1  
# 4. Створити довільний список (list), в який включити всі базові типи.
```{r}
lis <- list(a = 1, b = 2.5, c = "A", d = F,  5i)
print(lis)
```
$a  
[1] 1  

$b  
[1] 2.5  

$c  
[1] "A"  

$d  
[1] FALSE  

[[5]]  
[1] 0+5i  

# 5. Створити фактор з трьома рівнями «baby», «child», «adult».
```{r}
fac <- factor(c("baby","child","adult","adult","child","adult"))
print(fac)
```
[1] baby  child adult adult child adult  
Levels: adult baby child  

# 6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA,11. Знайти кількість значень NA.
```{r}
six <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA)
counter <- 0
for (i in 1:length(six)){
  if (is.na(six[i]) && counter == 0)
  {
    print(paste0("First Na index is ",i))
  }
  if (is.na(six[i])) counter <- counter + 1
}
print(paste0("Number of Na's is ",counter))
```
[1] "First Na index is 5"  
[1] "Number of Na's is 3"  
# 7. Створити довільний data frame та вивести в консоль.
```{r}
df <- data.frame(note = 1:3, blank = c("House","plant","mouse"), is_upgaded = rep(T,3))
print(df)
```
  note blank is_upgaded  
1    1 House       TRUE  
2    2 plant       TRUE  
3    3 mouse       TRUE  
# 8. Змінити імена стовпців цього data frame.
```{r}
names(df) <- c("rock","mount","wiz")
print(df)
```
  rock mount  wiz  
1    1 House TRUE  
2    2 plant TRUE  
3    3 mouse TRUE  
