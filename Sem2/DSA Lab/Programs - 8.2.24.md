## Reading An Array
```java
class Testarray {  
	public static void main(String args[]){  
	int a[]=new int[100];
	a[0]=10;
	a[1]=20;  
	a[2]=70;  
	a[3]=40;  
	a[4]=50;  
	for(int i=0;i<a.length;i++){
		System.out.println(a[i]);
	}  
}
}
```
## Inputting An Array
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
	}
}
```
## Searching An Array
```java
import java.util.Scanner;
public class searchArray {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter the size of array:");
		int size = input.nextInt();
		int a[] = new int[size];
		System.out.println("Enter the elements of the array:");
		for (int i = 0; i < size; i++) {
			a[i] = input.nextInt();
		}
		System.out.println("Enter the element you want to search for: ");
		int searchTerm = input.nextInt();
		for (int i = 0; i < size; i++){
			if(a[i]==searchTerm){
				System.out.println("Element "+searchTerm+" found at position "+i);
			}
		}
	}
}
```
## Inserting An Element To The End Of An Array
```java
import java.util.Scanner;
public class insertElementToEnd {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter the size of array:");
		int size = input.nextInt();
		int a[] = new int[size];
		System.out.println("Enter the no. of elements you would like to input to the array:");
		int userInputlength = input.nextInt();
		if (userInputlength > size)
			System.out.println("Invalid number; The number of input elements cannot exceed the size of the given array.");
		else {
			for (int i = 0; i < userInputlength; i++) {
				a[i] = input.nextInt();
			}
		}
		System.out.println("Print element to be added to end of array:");
		if (userInputlength == size){
			System.out.println("Array is already full.");
		}
		else {
			a[userInputlength] = input.nextInt();
		}
		System.out.println("Reading final array");
		for(int i=0;i<a.length;i++){
		System.out.println(a[i]);  
		}
	}
}
```
## Inserting An Element To The Beginning Of An Array
```java
import java.util.Scanner;
public class insertElementToBeginning {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter the size of array:");
		int size = input.nextInt();
		int a[] = new int[size];
		System.out.println("Enter the no. of elements you would like to input to the array:");
		int userInputlength = input.nextInt();
		if (userInputlength > size)
			System.out.println("Invalid number; The number of input elements cannot exceed the size of the given array.");
		else {
			for (int i = 0; i < userInputlength; i++) {
				a[i] = input.nextInt();
			}
		}
		System.out.println("Print element to be added to the beginning of the array:");
		if (userInputlength == size){
			System.out.println("Array is already full.");
		}
		else {
			for(int i = userInputlength; i>0;i--){
				a[i] = a[i-1];
			}
			a[0] = input.nextInt();
		}
		System.out.println("Reading final array");
		for(int i=0;i<a.length;i++){
		System.out.println(a[i]);
		}
	}
}
```
## Insert Elements To Certain Position
```java
import java.util.Scanner;
public class insertElementToBeginning {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter the size of array:");
		int size = input.nextInt();
		int a[] = new int[size];
		System.out.println("Enter the no. of elements you would like to input to the array:");
		int userInputlength = input.nextInt();
		if (userInputlength > size)
			System.out.println("Invalid number; The number of input elements cannot exceed the size of the given array.");
		else {
			for (int i = 0; i < userInputlength; i++) {
				a[i] = input.nextInt();
			}
		}
		if (userInputlength == size){
			System.out.println("Array is already full.");
		}
		else {
			System.out.println("Enter position to be added at: ");
			int index = input.nextInt();
			for(int i = userInputlength; i>index;i--){
				a[i] = a[i-1];
			}
			System.out.println("Enter element to be added:");
			a[index] = input.nextInt();
		}
		System.out.println("Reading final array");
		for(int i=0;i<a.length;i++){
		System.out.println(a[i]);
		}
	}
}
```
