stu={}      # <----Global Variable Of Student Credentials Dictionary

def adder():
    print("\n--- Add Student ---")
    n=input("Enter Student's Registration Number: ")
    if n in stu:
        print("Student Credentials Already Exists!")
    else:
        a=input("Enter Name: ")
        b=input("Enter Course: ")
        c=input("Enter CGPA: ")
        d=input("Enter State: ")
        stu[n]={"Name":a,"Course":b,"Cgpa":c,"State":d}
        print("Student Credentials Added Successfully!") 

def searcher():
    print("\n--- Search Student ---")
    n=input("Enter Registration Number: ")
    if n in stu:
         print("\nRecord Found:")
         print("Reg No :", n)  
         print("Name :",stu[n]["Name"])
         print("Course :",stu[n]["Course"])
         print("CGPA :",stu[n]["Cgpa"])
         print("State :",stu[n]["State"])
    else:
        print("Student Not Found In Records!")

def updater():
    print("\n--- Update Student ---")
    n=input("Enter Registration Number: ")
    if n in stu:
        print("(For No Replacement, Simply Press Enter.)")
        a1=input(f"Name ({stu[n]['Name']}): ") or stu[n]["Name"]
        b1 = input(f"Course ({stu[n]['Course']}): ") or stu[n]['Course']
        c1 = input(f"CGPA ({stu[n]['Cgpa']}): ") or stu[n]['Cgpa']
        d1 = input(f"State ({stu[n]['State']}): ") or stu[n]['State']
        stu[n]={"Name":a1,"Course":b1,"Cgpa": c1,"State":d1}
        print("Record Updated Successfully!")
    else:
        print("Student's Credentials Not Found!")

def deleter():
    print("\n--- Delete Student ---")
    n=input("Enter The Student's Registration Number: ")

    if n in stu:
        del stu[n]
        print("Student Credentials Deleted Successfully!")

    else:
        print("Student Credentials Not Found!!")

def disall():
    print("\n--- All Students ---")
    for n,i in stu.items():
        print("\nReg No :", n)
        print("Name   :", i["Name"])
        print("Course :", i["Course"])
        print("CGPA   :", i["Cgpa"])
        print("State  :", i["State"])


while True:
    print("\n===== STUDENT RECORD SYSTEM  =====")
    print("1. Add Student")
    print("2. Search Student")
    print("3. Update Student")
    print("4. Delete Student")
    print("5. Display All Students")
    print("6. Exit")

    ch=int(input("Enter Your Choice: "))

    if ch==1:
        adder()
    elif ch==2:
        searcher()
    elif ch==3:
        updater()
    elif ch==4:
        deleter()
    elif ch==5:
        disall()
    elif ch==6:
        print("Exiting....")
        break
    else:
        print("Invalid Choice! Please Try Again!")
