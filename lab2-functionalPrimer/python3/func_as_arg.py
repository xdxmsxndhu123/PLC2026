def listFunc(a, b):
    # Create list of ints from a to b (inclusive)
    return [i for i in range(a, b + 1)]

def applicatorFunc(inpFunc, s, a, b):
    if s == 's':
        return sum(inpFunc(a, b))
    elif s == 'a':
        return sum(inpFunc(a, b)) / (b - a + 1)
    else:
        raise ValueError("Invalid choice! Use 's' for sum or 'a' for average.")

# Get user input and convert to integers
a = int(input("Enter start of range (a): "))
b = int(input("Enter end of range (b): "))
choice = input("Enter 's' for sum or 'a' for average: ").strip().lower()

# Call and print result
result = applicatorFunc(listFunc, choice, a, b)
print("Result =", result)