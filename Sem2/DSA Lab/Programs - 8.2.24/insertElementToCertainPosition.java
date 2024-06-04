import java.util.Scanner;
public class insertElementToBeginning {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter the size of array:");
		int size = input.nextInt();
		int a[] = new int[size];
		System.out.println("Enter the no. of elements you would like to input to the array:");
		int userInputlength = input.nextInt();
		if (userInputlength > size)
			System.out.println("Invalid number; The number of input elements cannot exceed the size of the given array.");
		else {
			for (int i = 0; i < userInputlength; i++) {
				a[i] = input.nextInt();
			}
		}
		if (userInputlength == size){
			System.out.println("Array is already full.");
		}
		else {
			System.out.println("Enter position to be added at: ");
			int index = input.nextInt();
			for(int i = userInputlength; i>index;i--){
				a[i] = a[i-1];
			}
			System.out.println("Enter element to be added:");
			a[index] = input.nextInt();
		}
		System.out.println("Reading final array");
		for(int i=0;i<a.length;i++){
		System.out.println(a[i]);
		}
	}
}
