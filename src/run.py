import regression
import matplotlib.pyplot as plt
from numpy import *


xArr,yArr=regression.loadDataSet('/home/everton.gago/projetos/braskem/data/data.csv')
ws = regression.standRegres(xArr,yArr)
xMat=mat(xArr)
yMat=mat(yArr)
yHat = xMat*ws

corr = corrcoef(yHat.T, yMat)

print 'Corr Coef: ', corr

fig = plt.figure()
ax = fig.add_subplot(111)
ax.scatter(xMat[:,1].flatten().A[0], yMat.T[:,0].flatten().A[0])
xCopy=xMat.copy()
xCopy.sort(0)
yHat=xCopy*ws
ax.plot(xCopy[:,1],yHat)
plt.show()

