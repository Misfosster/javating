/*
For this task you should reuse the Student class from Task 3. 
    Methods of reusing the class could be: 
    - copy the Students.java file and add it to a new folder called task5
    - copy the content of the Students class from Task 3 and create the class once more in this folder
    - Open the task 3 folder and continue working in this.
    Either method is fine - it is up to you. 
    
5.a Create a new class Datamatik or reuse the one you created earlier. Add an array of Students with 10 elements in it. 
This should be a class variable (static). From the main method, add 10 student instances to the array. Each student must have a unique reference.

5.b Create a function in Datamatik that takes in the array from 5.a as a parameter as well as an integer. 
The function should return the field "name" (the name of the student) and print it (the integer should be used as the index nuber of the student to be printed). 
Call this method with different parameters (only the integer - not the array) from the main() of Datamatik.

5.c Create a similar function to that of 5.b, but instead of receiving the array and an integer, it receives the array and a string. Loop through all elements 
in the array until you find the element with the name received as a parameter. Then return the index of that student. 
Call this method with different names from the main method of Datamatik.
*/
class Datamatik 
{
	static Student[] students = new Student[10];
	public static void main(String[] args)
	{
		students[0]=new Student("Ole", 75, false);
		students[1]=new Student("Birgit", 38, true);
		students[2]=new Student("Arnold", 56, false);
		students[3]=new Student("Ingrid", 70, true);
		students[4]=new Student("Gerald", 25, false);
		students[5]=new Student("Gandalf", 150, false);
		students[6]=new Student("Frodo", 50, false);
		students[7]=new Student("John", 46, false);
		students[8]=new Student("Kirstin", 80, true);
		students[9]=new Student("Adolf", 133, false);
		
		printStudentName(0, students);
		printStudentName(5, students);
		printStudentName(4, students);
		System.out.println("The person you're looking for, was found at this index: "+returnStudentIndex(students, "Gandalf"));

	}

	static void printStudentName(int i, Student[] s)
	{
		System.out.println(s[i].name);
	}
	static int returnStudentIndex(Student[] s, String n)
	{
		int foundIndex=404;
		for(int i = 0; i<s.length; i++)
		{
			if(s[i].name.equals(n))
			{
				foundIndex=i;
			}
		}
		return foundIndex;
	}
}