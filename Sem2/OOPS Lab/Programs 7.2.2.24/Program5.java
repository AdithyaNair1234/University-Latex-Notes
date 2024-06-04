import java.util.*;
public class Program5 {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Choose your datatype:");
		System.out.println("1:Integer, 2: Float, 3: Double, 4: String");
		int choice = input.nextInt();
		System.out.println("Enter your number:");
		switch (choice) {
			case 1:
				int inp = input.nextInt();
				break;
			case 2:
				float floatinp = input.nextFloat();
				break;
			case 3:
				double doubleinp = input.nextDouble();
				break;
			case 4: 
				String Stringinp = input.next();
				break;
			default:
				break;
		}
	}
}
