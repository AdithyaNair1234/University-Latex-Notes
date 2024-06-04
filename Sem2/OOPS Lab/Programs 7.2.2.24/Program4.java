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
