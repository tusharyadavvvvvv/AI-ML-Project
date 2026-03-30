# Project Statement – Student Record Management System (Menu-Driven Python Program)

## Problem Statement

Managing basic student information often becomes disorganized when handled manually. Schools, small coaching centres, or beginners learning programming usually rely on paper-based records or scattered digital notes. This leads to issues such as difficulty in retrieving details, repeated entries, missing information, and the need to rewrite or correct data frequently.

To address this, a simple command-line Student Record Management System is created using Python. The system keeps each student's data under a unique registration number and uses a nested dictionary to store and manage details such as name, course, CGPA, and state. The program provides clear functions to add, search, update, delete, and display student records through a menu-driven interface. This eliminates manual errors and ensures that information can be accessed and modified quickly.

---

## Scope of the Project

The project focuses on fundamental record management using in-memory storage. It is designed intentionally without external file handling or databases so that learners can understand the core logic clearly. The scope includes:

- Storing all student records in a nested dictionary, where each key represents a registration number.
- Adding new student entries while preventing duplicates.
- Searching for individual students using their registration number.
- Updating selected fields of existing records without removing old information.
- Deleting records when they are no longer needed.
- Displaying all stored students in a structured and readable manner.
- Providing a continuous menu loop so the user can perform multiple operations in a single session.

The system ends when the user selects the exit option. Since all data is stored in memory, records reset once the program closes.

---

## Target Users

The system is designed for users who need a lightweight, no-setup record manager or who are learning how to build one. This includes:

- Students learning Python programming and dictionary operations.
- Beginners practicing CRUD (Create, Read, Update, Delete) logic.
- Teachers demonstrating how data structures work within a menu-driven program.
- Individuals who want a small-scale tool to organise simple records temporarily.
- Developers who want a basic template to expand into file handling, GUI, or database systems later.

The tool is intentionally simple so that new learners can read, understand, and experiment with it easily.

---

## High-Level Features

The system includes the following key features, all implemented with nested dictionary storage and a menu-based user interface:

- **Add Student:** Allows users to insert a new student's details. The system checks for duplicate registration numbers before adding.
- **Search Student:** Retrieves and displays the complete details of a student if the registration number exists.
- **Update Student:** Enables the user to modify any field of an existing entry without deleting the record. The system preserves old values if no new input is provided.
- **Delete Student:** Removes a record entirely from the dictionary using the registration number as the reference key.
- **Display All Students:** Shows every stored student with complete information in an organized format.
- **Menu-Driven System:** Presents options to the user continuously until the exit command is chosen, making the program interactive and easy to use.
- **In-Memory Operations:** All actions occur using Python’s built-in data structures without needing external files or installations.

These features together create a clear, functional, and beginner-friendly management system suitable for educational and small operational use.
