1. Write a program that declares and initializes variables of different data types (int, double, char, boolean) and prints their values.
```java
import java.util.*;
class Program1 {
public static void main(String args[]) {
	int a = 0;
	double b = 0.0;
	char c = 'a';
	boolean g = true;
	System.out.println(a);
	System.out.println(b);
	System.out.println(c);
	System.out.println(g);
}
}
```
2. Write a Java program that initilializes inputs and performs various arithmetic operations (addition, subtraction, multiplication, division) using appropriate data types.
```java
import java.util.*;
class Program2 {
public static void main(String[] args) {
	Scanner Scanner = new Scanner(System.in);
	System.out.println("Enter first number:");
	int a = Scanner.nextInt();
	System.out.println("Enter second number:");
	int b = Scanner.nextInt();
	System.out.println("Enter operation(1:addition,2:subtraction,3:multiplication,4:division)");
	int operation = Scanner.nextInt();
	if(operation == 1){
	System.out.println(a+b);
	}
	if(operation == 2){
	System.out.println(a-b);
	}
	if(operation == 3){
	System.out.println(a*b);
	}
	if(operation == 4){
	System.out.println(a/b);
	}
}
}
```
3. Write a program to illustrate the use of increment and decrement operators.
```java
import java.util.*;
public class Program3 {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter a number:");
		int i = input.nextInt();
		i++;
		System.out.println("Incremented number: " +i);
		i--;
		System.out.println("Decremented number: " +i);

	}
}
```
4. Determine the largest of three numbers using suitable operators.
```java 
import java.util.Scanner;
public class Program4 {
	public static void main(String[] args) {
		System.out.println("Enter first number: ");
		Scanner input = new Scanner(System.in);
		int a = input.nextInt();
		System.out.println("Enter second number: ");
		int b = input.nextInt();
		System.out.println("Enter third number: ");
		int c = input.nextInt();
		int greatest = a;
		if (greatest>b){
			if (greatest>c){
				System.out.println("first number is greatest");
		}
		else {
			greatest = b;
			if(greatest > c){
				System.out.println("second number is greatest");
			}
			else {
				System.out.println("third number is greatest");
			}
		}
		}
	}
}
```
5. Explore how to take user input in Java for different data types.
```java
import java.util.*;
public class Program5 {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Choose your datatype:");
		System.out.println("1:Integer, 2: Float, 3: Double, 4: String");
		int choice = input.nextInt();
		System.out.println("Enter your number:");
		switch (choice) {
			case 1:
				int inp = input.nextInt();
				break;
			case 2:
				float floatinp = input.nextFloat();
				break;
			case 3:
				double doubleinp = input.nextDouble();
				break;
			case 4: 
				String Stringinp = input.next();
				break;
			default:
				break;
		}
	}
}
```
6. Based on Q5, Prompt the user to input his/her age and display the eligibility to vote.
```java
import java.util.*;
public class Program6 {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter your age: ");
		int age = input.nextInt();
		if(age>=18){
			System.out.println("You are eligible to vote");
		}
		if (age<=18) {
			System.out.println("You are not eligible to vote");
		}
	}
}
```
7. Illustrate the use of short-hand notation operators.
```java
import java.util.Scanner;
public class Program7 {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int a = input.nextInt();
		a += 5;
		System.out.println(a);
		a -= 10;
		System.out.println(a);
	}
}
```
8. Print the default values of different data types.
```java
public class Program8 {
	 static int a1;
	 static float a2; 
	 static double a3;
	 static char a4;
	 static String a5;
	 static byte a6;
	 static short a7;
	 static long a8;
	public static void main(String[] args) {
		System.out.println(a1);	
		System.out.println(a2);	
		System.out.println(a3);	
		System.out.println(a4);	
		System.out.println(a5);	
		System.out.println(a6);	
		System.out.println(a7);	
		System.out.println(a8);	
	}
}
```