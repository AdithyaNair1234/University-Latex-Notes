import java.util.*;
public class switch_case {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter value");
		int a = sc.nextInt();
		switch (a) {
			case 1:
				System.out.println(1);
				break;
			case 2:
				System.out.println(2);
				break;

			default:
				break;
		}
	}
}
