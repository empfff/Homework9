import sys

argInput = sys.argv[1:]

def listomatic(nums):
    initialList = [1,6,9,8,14]
    for num in nums:
        convNum = int(num)
        initialList.append(convNum)
    return initialList

myList = listomatic(argInput)
print('The list is', myList)
print('The length is', len(myList))
myList.sort()
print('The sorted list is', myList)
