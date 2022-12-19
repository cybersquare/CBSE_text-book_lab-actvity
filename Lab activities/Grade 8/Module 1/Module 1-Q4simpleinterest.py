import sys
print(sys.argv[1])
print(sys.argv[2])
print(sys.argv[3])
try:
    p = float(sys.argv[1])
    r = float(sys.argv[2])
    t = float(sys.argv[3])
    print("Simple Interest=",(p * t * r)/100)
except:
    print("ERROR: Invalid input format.")


