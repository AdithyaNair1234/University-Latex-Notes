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
