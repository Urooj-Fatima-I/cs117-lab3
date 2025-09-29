# making functions for operations
def add(a, b):
    return a + b

def subtract(a, b):
    return a - b

def multiply(a, b):
    return a * b


def divide(a, b):
    return a / b if b != 0 else "cannot divide by zero"

def even_odd(n):
    return "Number is even" if n % 2 == 0 else "Number is odd"

def percentage(part, whole):
    return (part / whole) * 100 if whole != 0 else "input is invalid"

# main program loop
while True:
    print("\nSelect Option:")
    print("1. Addition")
    print("2. Subtraction")
    print("3. Multiplication")
    print("4. Division")
    print("5. Even/Odd Check")
    print("6. Percentage")
    print("7. Exit")
    choice = input("Enter choice: ")
    # Exit condition
    if choice == "7":
        break

    # having input two numbers from user for operations
    if choice in ["1", "2", "3", "4", "6"]:
        a = float(input("Enter first number : "))
        b = float(input("Enter second number: "))

        if choice == "1":
            print("Result:", add(a, b))
        elif choice == "2":
            print("Result:", subtract(a, b))
        elif choice == "3":
            print("Result:", multiply(a, b))
        elif choice == "4":
            print("Result:", divide(a, b))
        elif choice == "6":
            print("Result:", percentage(a, b), "%")

    # having input one number from user for even odd check
    elif choice == "5":
        n = int(input("Enter number: "))
        print("Result:", even_odd(n))
    else:
        print("Invalid choice")
