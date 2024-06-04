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
