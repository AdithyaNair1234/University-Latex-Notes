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
