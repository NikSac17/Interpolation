#lagrange interpolation                   

import numpy as np
import sympy as sm

x=sm.symbols('x')

a=np.array([(-1,0,1,2),(3,-4,5,-6)])

sum=0

for i in range(4):
    P=1
    for j in range(4):
        if (j!=i):
            P=P*((x-a[0,j]))/(a[0,i]-a[0,j])
    sum=sum+a[1,i]*P
    


P=sm.simplify(sum)
print('\nInterpolated polynomial is : \n')
print(P)

#PYTHON LIBRARIES USED : 
#numpy
#sympy