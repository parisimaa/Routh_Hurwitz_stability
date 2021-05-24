# Routh_Hurwitz_stability
## Description:
Learn more about Routh-Hurwitz stability criterion and its application in [Wikipedia](https://en.wikipedia.org/wiki/Routh%E2%80%93Hurwitz_stability_criterion ) <br>
- ### routh.m file: <br>
I seperated the function into two main parts. One section operates when the number of coefficients are even and the other, when when the number of coefficients are odd. <br>
Test Example: s^4 + 4s^3 + 5s^2 + 6s +8 = 0 <br>
routh([1 4 5 6 8]) <br>
Routh-Hurwitz Table: <br>

|C0|C1|C2|C3|
|---|---|---|---|
S^4| 1 | 5 | 8 |
S^3| 4 | 6 | 0 |
S^2| 3.5 | 8 | 0 |
S^1| -3.1429 | 0 | 0 |
S^0| 8 | 0 | 0 |
 
- ### srouth.m file:
## Contact:
parisima.abdali@gmail.com
