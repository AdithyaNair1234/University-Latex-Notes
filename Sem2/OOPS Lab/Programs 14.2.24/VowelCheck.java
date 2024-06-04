import java.util.Scanner;
public class VowelCheck {
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("Enter character: ");
		char in = input.next().charAt(0);
		if(in == 'a' | in == 'e' | in == 'i' | in == 'o' | in == 'u'|in == 'A' | in == 'E' | in == 'I' | in == 'O' | in == 'U') 
			System.out.println("Your character is a vowel.");
		else 
			System.out.println("Your character is a consonant.");
	}
}
