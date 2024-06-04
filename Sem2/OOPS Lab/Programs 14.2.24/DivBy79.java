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
