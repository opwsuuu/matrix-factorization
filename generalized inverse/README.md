1.Ajian.m is generalized inverse matrix of minus sign(the generalized inverse only meets the first condition of The Penrose conditions.) based on four-block matrix method

2.Arjian.m is the reflexive generalized inverse based on Full rank decomposition.

3.zhi.m is Full rank decomposition.

4.Amjian.m is minimum norm g-inverse based on 1,2 and 3.

5.Aljian.m is least square generalized inverse 1,2 and 3/

6.Aplus.m is Moore–Penrose inverse based on all of above.

7.formula.m has two cases.
Case 1 is aiming to solve the general solvtion of linear system of equations.
If it is Reconcilable linear equations , it could provide the the general solvtion by 1.
If it is inconsistent linear equations , it could give the least square solution by 4.
Case 2 is aiming to give particular solution.
If it is Reconcilable linear equations , it could provide the Minimum Norm Solution by 5.
If it is inconsistent linear equations , it could provide the minimal norm least squares solution  by 6.
In addition: because of my poor matlab experience, the quantities of free variable(z1,z2...zn) need to be consisent with the dimension of A-*A.You need to add the free variable manually in 7 before run it.
