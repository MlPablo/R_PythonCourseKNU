### В лабораторній роботі необхідно написати наступні функції на мові R та вивести результат роботи цих функцій на довільних даних: 1. Функція add2(x, y), яка повертає суму двох чисел.
```{r}
add2 <- function (x,y){
  return (x + y)
}
add2(115,-18)
```
```
[1] 97
````

### 2. Функція above(x, n), яка приймає вектор та число n, та повертає всі елементі вектору, які більше n. По замовчуванню n = 10.
```{r}
above <- function (x, n = 10){
  return (x[x > n])
}
v <- c(1:20,100,-10,56)
above(v,4)
above(v)
```

```
 [1]   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20 100  56
 [1]  11  12  13  14  15  16  17  18  19  20 100  56
```
### 3. Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, та повертає елементи вектору, які відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”. Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.
```{r}
my_ifelse <- function (x, exp, n){
  ops <- c('<','>' , '<=', '>=', '==')
  if (exp %in% ops) {
    return (x[.Primitive(exp)(x,n)])
  }
  return(x)
}
b <- c(-1,0,1,2,-2)
my_ifelse(b,"==",0)
my_ifelse(b,"<",0)
my_ifelse(b,">=",-1)
my_ifelse(b,"+",-1)
```

```
[1] 0
[1] -1 -2
[1] -1  0  1  2
[1] -1  0  1  2 -2
```
### 4. Функція columnmean(x, removeNA), яка розраховує середнє значення (mean) по кожному стовпцю матриці, або data frame. Логічний параметр removeNA вказує, чи видаляти NA значення. По замовчуванню він дорівнює TRUE.
```{r}
columean <- function (x, removeNA = T){
  ncols <- dim(x)[2]
  for(i in 1:ncols){
    print(paste0("In ",i," column mean = ",mean(x[,i],na.rm = removeNA)))
  }
}
mat <- matrix(c(1:3,NA,9,18,-3,5,NA,8,-10,15),nrow = 3, ncol = 4)
mat
columean(mat)
columean(mat,rem = F)
```

```
     [,1] [,2] [,3] [,4]
[1,]    1   NA   -3    8
[2,]    2    9    5  -10
[3,]    3   18   NA   15


[1] "In 1 column mean = 2"
[1] "In 2 column mean = 13.5"
[1] "In 3 column mean = 1"
[1] "In 4 column mean = 4.33333333333333"


[1] "In 1 column mean = 2"
[1] "In 2 column mean = NA"
[1] "In 3 column mean = NA"
[1] "In 4 column mean = 4.33333333333333"
```
