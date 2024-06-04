import java.util.*;
public class 4a {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter a value: ");
		int value = input.nextInt();
		if(value > 100)
			value = value*50;
	}
}
