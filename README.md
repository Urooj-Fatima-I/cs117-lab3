# Part C: Comparison Document

This document compares our implementation of a calculator in Assembly and Python. It includes reflections on both languages and a comparison of key features.
## 1. Assembly Reflections
**What did we notice about registers and instructions?**  
  We noticed that Assembly programming relies on registers to store values and instructions to perform operations. Registers like EAX or EBX hold data directly, and every step of a calculation must be explicitly written. (This shows how low-level Assembly is, since we interact directly with the CPU and memory management rather than abstract variables.)  

**How is coding in Assembly different from Python?**  
  Coding in Assembly is very detailed and requires managing hardware resources directly. Even a simple print statement involves multiple steps with system interrupts. Unlike Python, Assembly does not provide built-in abstractions, so we must handle everything manually. It is harder to read, less portable across platforms, and requires more effort to write even basic programs. Python, on the other hand, is high-level, portable, and much easier to learn and understand.

## 2. Python Reflections
**Why is Python easier/faster for building the same project?**  
  Python is easier because it reads almost like human language, making it intuitive. It is faster to build projects since we don’t have to worry about memory management or CPU registers. Python also doesn’t require declaring data types, which reduces effort and simplifies coding.  

**Which features of Python help abstraction (variables, functions, loops)?**  
All mentioned features helps in abstraction as follow:
  - **Variables**: Simple to define without worrying about registers or memory.  
  - **Functions**: Help reuse and organize code better.  
  - **Loops**: Allow repeating tasks easily, something complex to manage in Assembly.  
  These abstractions hide the complexity of hardware-level operation making development much more efficient.

## 3. Comparison Table

| **Feature**        | **Assembly Example** | **Python Example** | **Notes** |
|---------------------|----------------------|--------------------|-----------|
| **Variable Storage** | Register (EAX)         | x = 5          | In assembly values must be stored in registers like EAX. In python variables are created directly such as x = 5 without worrying about memory or data types. |
| **Printing Output** | INT 21h            | print()   | Assembly uses system interrupts such as INT 21h to display output while python has a simple built-in print() function |
| **Arithmetic**      | ADD AX, BX         | result = a + b   | Assembly requires explicit instructions as AX and BX in given expression to perform addition operation python uses simple operators direcly such as x + y to get results easily. |

