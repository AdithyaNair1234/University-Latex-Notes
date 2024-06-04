Declare some variables 
```java
public class DeclarationTest {
	public static void main(String[] args) {
		int value1 = 60;
		float value2 = 5.0f;
		System.out.println("Multiplication: "+(value1*value2));
		System.out.println("Division: "+(value1/value2));
		System.out.println("Modulo: "+(value1%value2));
	}
}
```
Increment Operator test
```java
public class IncTest {
	public static void main(String[] args) {
		int a = 570;
		System.out.println(a++);
		System.out.println(a--);
		System.out.println(++a);
		System.out.println(--a);
	}
}
```
Print the largest number
```java
public class printLargest {
	public static void main(String[] args) {
		int a = 100;
		int b = 50;
		float c = 100.0f;
		float d = 50.0f;
		if(a>b){
			if (a>c) {
				if (a>d){
					System.out.println("A");
				}
				else {
					System.out.println("D");
				}
			}
			else {
				if (c>d) {
					System.out.println("C");
				}
				else 
					System.out.println("D");
			}
			
	}
	else {
		if (b>c) {
			if (b>d) {
				System.out.println("B");
			}
			else {
				System.out.println("D");
			}
		}
		else {
			if (c>d) {
				System.out.println("C");
			}
			else {
				System.out.println("D");
			}
		}
	}
	if (b == d)
		System.out.println("B and D are equal");
}
}
```