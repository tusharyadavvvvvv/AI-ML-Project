# Student Record Management System using Python

## Overview
This project is a simple command-line based Student Record Management System written in Python. It uses a nested dictionary to store student information and provides a menu-driven interface for performing basic operations. The system allows users to add, search, update, delete, and display student records.  
All data is maintained in memory during program execution, making it lightweight and easy to run without any external files or databases.

The program is aimed at beginners who want to understand Python fundamentals such as functions, dictionaries, loops, and basic data handling.

## Features
The system provides the following core functionalities:

- Add a new student record  
- Search for a student using their registration number  
- Update the details of an existing student  
- Delete a student record  
- Display all stored student records  
- Menu-driven interface for user interaction  
- Uses a nested dictionary structure for efficient data storage  

Each operation is handled through a separate function, resulting in clean and modular code.

## Technologies and Tools Used
- Python 3.8 or above  
- No external libraries required  
- Works on Windows, macOS, and Linux  
- Compatible with any text editor or IDE (VS Code, IDLE, PyCharm, etc.)

## How to Install and Run the Project

### Step 1: Install Python
Ensure that Python 3.8 or above is installed on your system.  
You can check this by running:

```bash
python --version
```

Once the program starts, a menu appears showing all available operations such as add, update, delete, and display.

---

## Instructions for Testing the System

Below is a detailed testing guide that ensures every part of the program works correctly. Follow these steps in order:

### **1. Test Adding Students**

- Start the program and choose option **1. Add Student**
- Enter different registration numbers and details
- Try adding two students with the same registration number  
  → The system should warn you that the record already exists  

This verifies:
- Input handling  
- Dictionary insertions  
- Duplicate prevention

---

### **2. Test Searching for Students**

Choose **2. Search Student** and try:

- Searching for an existing registration number  
  → Should show the correct stored information  
- Searching for a number that has not been added  
  → Should show “Student Not Found”  

This confirms lookup operations work correctly.

---

### **3. Test Updating Records**

Select **3. Update Student** and:

- Update only one field (for example, change only the CGPA)  
- Press Enter without typing anything for a field  
  → The program should keep the old value  
- Try updating a non-existing student  
  → Should show a “not found” message  

This validates:
- Partial updates  
- Input defaults  
- Record existence checks

---

### **4. Test Deletion Functionality**

Choose **4. Delete Student** and:

- Delete a valid registration number  
  → Record should be removed  
- Try deleting it again  
  → The system must notify that it no longer exists  

This confirms deletion behavior and error handling.

---

### **5. Test Display All Students**

Add two or more sample students, then choose **5. Display All Students**.  
Check if:

- All entries appear  
- Formatting is clear  
- Updated/deleted changes are correctly reflected  

This ensures your dictionary structure and retrieval logic work correctly.

---

### **6. Test Exiting the Program**

Select option **6. Exit** to ensure the application closes cleanly without errors.

---

## Summary

This project provides a practical demonstration of Python concepts such as dictionaries, loops, user input, and structured program design. Since the file runs entirely in the console with no external dependencies, it is simple to test, modify, and extend for learning purposes.
