import java.util.*;
public class q4b {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter a value: ");
		int value = input.nextInt();
		if (value > 1000) {
			if (value % 2 == 0)	
				value = value++;
			else {
				value--;
			}
		}
		if (value < 1000)
			value = value*25;
	}
}
