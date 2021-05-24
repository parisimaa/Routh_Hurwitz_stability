# Routh_Hurwitz_stability
## Description:
Learn more about Routh-Hurwitz stability criterion and its application in [Wikipedia](https://en.wikipedia.org/wiki/Routh%E2%80%93Hurwitz_stability_criterion ) <br>
- ### routh.m file: <br>
I seperated the function into two main parts. One section operates when the number of coefficients are even and the other, when the number of coefficients are odd. <br>
** Test Example 1 : s^4 + 4s^3 + 5s^2 + 6s + 8 = 0 ** <br>
routh([1 4 5 6 8]) <br>
Routh-Hurwitz Table: <br>

|C0|C1|C2|C3|
|---|---|---|---|
S^4| 1 | 5 | 8 |
S^3| 4 | 6 | 0 |
S^2| 3.5 | 8 | 0 |
S^1| -3.1429 | 0 | 0 |
S^0| 8 | 0 | 0 |
 <br>
 Number of Right Poles = 2
- ### srouth.m file:
This function file is the optimized version of the first routh.m file. 
1. Even and odd coefficients sectiones are combined. 
2. Special conditions have been considered. 
 - One element in the first column is zero ( using Epsilon)
 - All elements of a row are zero ( using auxiliary function)
** Test Example 2 : s^4 + s^3 + s^2 + s + 1 = 0 ** <br>
routh([1 1 1 1 1]) <br>
Routh-Hurwitz Table: <br>

|C0|C1|C2|C3|
|---|---|---|---|
S^4| 1 | 1 | 1 |
S^3| 1 | 1 | 0 |
S^2| 0.01 | 1 | 0 |
S^1| -99 | 0 | 0 |
S^0| 1 | 0 | 0 |
 <br>
 Number of Right Poles = 2
 ** Test Example 3 : s^5 + s^4 + 2s^3 + 3s^2 + s + 2 = 0 ** <br>
routh([1 1 2 3 1 2]) <br>
Routh-Hurwitz Table: <br>

|C0|C1|C2|C3|
|---|---|---|---|
S^5| 1 | 2 | 1 |
S^4| 1 | 3 | 2 |
S^3| -1 | -1 | 0 |
S^2| 2 | 2 | 0 |
S^1| 4 | 2 | 0 |
S^0| 2 | 0 | 0 |
 <br>
 Number of Right Poles = 2

## Contact:
parisima.abdali@gmail.com
