import java.util.Scanner;
public class BTechAdmission {
	// Initializing the data members.
	String branch;
	String course;
	float fee;
	int duration;
	String campusName;
	float discount;
	// First constructor taking only branch and campusName as arguments
	BTechAdmission(String branch, String campusName) {
		branch = this.branch;
		campusName = this.campusName;
		duration = 4;
		fee = 250000f;
		course = "Not provided";

	}
	// Constructor that takes all arguments for the data members
	BTechAdmission(String branch, String course,  float fee, int duration, String campusName) {
		this.branch = branch;
		this.campusName = campusName;
		this.duration = duration;
		this.fee = fee;
		this.course = course;
	}
	float applyScholarship(){
		this.discount = 0f;
		if(this.fee>45000){
			this.discount = 0.1f*this.fee;
			return this.discount;
		}
		else 
			return this.discount;
	}
	void displayDetails(){
		System.out.println("The branch is: "+ this.branch);
		System.out.println("The course is: "+ this.course);
		System.out.println("The fee is: "+ this.fee);
		System.out.println("The duration is: "+ this.duration);
		System.out.println("The campus is: "+ this.campusName);
		System.out.println("The discount is: "+this.discount);
		System.out.println();
	}
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		System.out.println("How many objects must be created?");
		int arrayLength = input.nextInt();
		BTechAdmission[] objArray = new BTechAdmission[arrayLength];
		String b, c, cN;;
		float f, d;
		int dur;
		for(int i = 0;i<arrayLength; i++){
			System.out.println("Enter branch: ");
			b = input.next();
			System.out.println("Enter course: ");
			c = input.next();
			System.out.println("Enter fee: ");
			f = input.nextFloat();
			System.out.println("Enter campus: ");
			cN = input.next();
			System.out.println("Enter duration: ");
			dur = input.nextInt();
			objArray[i] = new BTechAdmission(b,c,f,dur,cN);
		}
		for(int i = 0;i<arrayLength; i++){
			objArray[i].applyScholarship();
		}
		for(int i = 0;i<arrayLength; i++){
			objArray[i].displayDetails();
		}
	}
}
