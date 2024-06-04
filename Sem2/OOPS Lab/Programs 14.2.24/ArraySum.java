import java.util.Scanner;
public class ArrayInput {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter the size of array:");
		int size = input.nextInt();
		int a[] = new int[size];
		System.out.println("Enter the elements of the array:");
		for (int i = 0; i < size; i++) {
			a[i] = input.nextInt();
		}
		int sum;
		for (int i = 0; i<size;i++){
		sum += a[i];
		}
		System.out.println("The total sum of the elements is: " + sum);
	}
}
