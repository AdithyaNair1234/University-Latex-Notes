import java.util.Scanner;
public class Program2 {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);	
		System.out.println("Enter a number: ");
		int x = input.nextInt();
		if(x<0)
			System.out.println("Negative number");
		else if(x<=9)
			System.out.println("One digit number");
		else if(x<=99)
			System.out.println("Two digit number");
		else if(x>=100)
			System.out.println("Three or more digit number");
	}
}
