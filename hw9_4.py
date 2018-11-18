from scipy.stats import norm
import sys

x = float(sys.argv[3])
mean = float(sys.argv[1])
std = float(sys.argv[2])

print(norm.cdf(x, mean, std))
print(norm.pdf(x, mean, std))
