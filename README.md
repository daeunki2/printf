# ft_printf

ft_printf is a custom implementation of the standard `printf` function in C.  
This project aims to replicate the behavior of `printf` while adhering to the 42 coding standards. It provides a deeper understanding of variadic functions and formatted output handling in C.

## Table of Contents
1. [Introduction](#introduction)
2. [Features](#features)
3. [Usage](#usage)
4. [Lessons Learned](#lessons-learned)
5. [Testing](#testing)
6. [License](#license)

---

## Introduction

ft_printf is designed to mimic the functionality of the standard `printf` function while supporting:
- Various format specifiers (e.g., `%c`, `%s`, `%d`, `%i`, `%u`, `%x`, `%X`, and `%%`).
- Robust handling of variadic arguments.

This project is implemented from scratch without using standard library functions like `printf`.

---

## Features

The ft_printf library supports the following:
- **Character output**: `%c`
- **String output**: `%s`
- **Integer output**: `%d`, `%i`
- **Unsigned integer output**: `%u`
- **Hexadecimal output**: `%x`, `%X`
- **Percent sign**: `%%`

---

## Usage

1. **Build the library**:
   ```bash
   make : This command will generate the libftprintf.a static library file.
 
## Lessons Learned

While working on ft_printf, I gained significant insights into several key aspects of C programming:

Variadic Functions
Understanding and implementing functions that accept a variable number of arguments (...). Using stdarg.h macros such as va_start, va_arg, and va_end was critical to processing the arguments dynamically.

Format Specifier Parsing
Developing a parser to interpret format specifiers and route them to the correct handlers. This taught me how to handle strings and characters with precision while ensuring compatibility with multiple formats.

Dynamic Memory Management
Efficient allocation and management of memory when handling strings or numbers for output. This project reinforced the importance of avoiding memory leaks and ensuring proper cleanup.

Bitwise Operations and Integer Conversions
Converting integers to hexadecimal and formatting them in uppercase or lowercase required a deep understanding of bitwise operations and algorithmic implementation.

Error Handling
Implementing robust error handling to gracefully manage edge cases, such as invalid format specifiers or unsupported input types.

Code Modularity and Optimization
Structuring the code to be modular and reusable, which enhanced the maintainability and readability of the project. Profiling and optimizing certain parts of the code also provided insights into performance tuning.

This project not only strengthened my understanding of fundamental C concepts but also prepared me for handling more complex challenges in future projects.
