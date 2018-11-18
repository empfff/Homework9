import sys

def sigma(lowerBound, upperBound):
    upperBound = upperBound + 1
    x = list(range(lowerBound, upperBound))
    mySum = 0
    for entry in x:
        mySum = mySum + entry^2
    return mySum

print(sigma(int(sys.argv[1]),int(sys.argv[2])))
