import java.util.*;
public class PassportService {
	String name; 
	String address;
	static Scanner input = new Scanner(System.in);
	int passportNo;
	String date;	
	public PassportService(String name,String address, int passportNo, String date) {
		this.name = name;
		this.address = address;
		this.passportNo = passportNo;
		this.date = date;
	}
	void issuePassport(boolean approved){
		if(approved){
			System.out.println("Congrats! Your passport has been issued.");
			System.out.println("Name:" + name);
			System.out.println("Address:" + address);
			System.out.println("Passport Number:" + passportNo);
			System.out.println("Date:" + date);
		}
		else
			System.out.println("Not approved");
	}
	void issuePassport(){
		System.out.println("Try again, approval is mandatory");
	}

	public static void main(String[] args) {
		System.out.println("Enter your details: ");
		System.out.println("Name: ");
		String name = input.next();
		System.out.println("Address: ");
		String address = input.next();
		System.out.println("Passport Number: ");
		int passportNo = input.nextInt();
		System.out.println("Expiry Date: ");
		String date = input.next();
		System.out.println();
		PassportService P = new PassportService(name, address, passportNo, date);
		P.issuePassport(true);
	}
}
