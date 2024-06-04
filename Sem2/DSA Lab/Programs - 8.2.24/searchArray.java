import java.util.Scanner;
public class searchArray {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter the size of array:");
		int size = input.nextInt();
		int a[] = new int[size];
		System.out.println("Enter the elements of the array:");
		for (int i = 0; i < size; i++) {
			a[i] = input.nextInt();
		}
		System.out.println("Enter the element you want to search for: ");
		int searchTerm = input.nextInt();
		for (int i = 0; i < size; i++){
			if(a[i]==searchTerm){
				System.out.println("Element "+searchTerm+" found at position "+i);
			}
		}
	}
}
