import java.util.Scanner;
public class Program5 {
	static int ConditionCheck(int k){
		if (k<90) {
			if (k<80) {
				if (k<70) {
					if (k<60) {
						System.out.println("Grade F");
					}	
					else 
						System.out.println("Grade D");
				}
				else 
					System.out.println("Grade C");
			}
			else 
				System.out.println("Grade B");
		}
		else 
			System.out.println("Grade A");
		return 0;
	}
	public static void main(String[] args) {	
		int k;
		Scanner input = new Scanner(System.in);
		System.out.println("Enter a value for k: ");
		k = input.nextInt();
		ConditionCheck(k);
	}
}
