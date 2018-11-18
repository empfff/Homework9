import sys

def is_even(x):
    if x%2==0:
        return True
    else:
        return False

def evensOnly(nums):
    onlyEvens = []
    for num in nums:
	    convNum = int(num)
        if is_even(convNum):
            onlyEvens.append(convNum)
    return onlyEvens

print(evensOnly(sys.argv[1:]))

