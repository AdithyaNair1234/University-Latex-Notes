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
