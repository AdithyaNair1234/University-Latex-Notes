# Check If a given input is divisible by 7 and 9
```java
import java.util.Scanner;
public class DivBy79 {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter your No.: ");
		int a = input.nextInt();
			if (a%7 == 0 && a%9 == 0) {
				System.out.println("The number is divisible by 7 and 9.");
			}
			else {
				System.out.println("The number is not divisible by 7 and 9");
			}
	}
}
```
# Ask the user to input the marks in a subject and print an appropriate message for the input.
```java
import java.util.Scanner;
public class AppropriateRemark {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter your marks: ");
		int marks = input.nextInt();
		if (marks == 100)
			System.out.println("Outstanding");
		else if (marks >= 90)
			System.out.println("Excellent");
		else if (marks >= 80)
			System.out.println("Good");
		else if (marks >= 70)
			System.out.println("Acceptable");
		else 
			System.out.println("Failure");
	}
}
```
# Input a character and check whether it is a consonant or a vowel.
```java
import java.util.Scanner;
public class VowelCheck {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter character: ");
		char in = input.next().charAt(0);
		if(in == 'a' | in == 'e' | in == 'i' | in == 'o' | in == 'u'|in == 'A' | in == 'E' | in == 'I' | in == 'O' | in == 'U') 
			System.out.println("Your character is a vowel.");
		else 
			System.out.println("Your character is a consonant.");
	}
}
```
# Pseudocode to Program
```pseudocode
Check if value > 100
	if true
		value = value*50
	do nothing otherwise
```

```java 
import java.util.*;
public class 4a {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter a value: ");
		int value = input.nextInt();
		if(value > 100)
			value = value*50;
	}
}
```

```pseudocode 
if value > 1000
	check if value is even
		value = value++
	otherwise pre-decrement
if value < 1000
	value*=25
```

```java
import java.util.*;
public class q4b {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter a value: ");
		int value = input.nextInt();
		if (value > 1000) {
			if (value % 2 == 0)	
				value = value++;
			else {
				value--;
			}
		}
		if (value < 1000)
			value = value*25;
	}
}

```
# Print out the square, cube and square root of a given number
```java
import java.util.*;
public class SquareCubeSqrt {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter your number: ");
		int n = input.nextInt();
		double square = Math.pow(n,2);
		double cube = Math.pow(n,3);
		double sqroot = Math.sqrt(n);
		System.out.println("The square of "+n+"is: "+square);
		System.out.println("The cube of "+n+"is: "+cube);
		System.out.println("The square root of "+n+ "is:"+sqroot);
	}
}
```

# Check whether a given number is even or odd
```java
import java.util.*;
public class EvenOdd {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int a = input.nextInt();
		if(a%2 == 0){
			System.out.println("The number given is even");
		}
		else {
			System.out.println("The number given is odd");
		}
	}
}
```

# Input an array and check the total sum of its elements
```java
import java.util.Scanner;
public class ArrayInput {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter the size of array:");
		int size = input.nextInt();
		int a[] = new int[size];
		System.out.println("Enter the elements of the array:");
		for (int i = 0; i < size; i++) {
			a[i] = input.nextInt();
		}
		int sum;
		for (int i = 0; i<size;i++){
		sum += a[i];
		}
		System.out.println("The total sum of the elements is: " + sum);
	}
}
```