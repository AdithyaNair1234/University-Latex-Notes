/*Define a class named  Income_Tax. 

Data members of this class are   tax_payee_name, tax_payee_age and salary_per_month. 
Member functions are compute_tax and display.

The member function compute_tax  will compute the tax based on the conditions below.

a.	If the person is a senior citizen and the income is less than 5 lakh there is no tax, otherwise, the tax to be paid will be 5% of the amount that exceeds 5 lakhs.
b.	If the person is less than 60 years of age and the if the annual income is below 5 lakhs, provide a rebate of 12,500. If annual income exceeds 5 lakhs, the tax to be paid will be 10% of the amount that exceeds 5 lakhs.*/
import java.util.*;
public class incomeTax {
	String taxPayeeName;
	int taxPayeeAge;
	double salaryPerMonth;
	double rebate;
	double tax;
	void computeTax(){
		if((salaryPerMonth*12)<(5*10^5) && taxPayeeAge > 60){
			tax =  0;
			rebate = 0;
		}
		else if ((salaryPerMonth*12)<(5*10^5))
		{
			tax = 0.05*(salaryPerMonth*12 - (5*10^5));
			rebate = 12500;
		}
		else {
			tax = 0.1*((salaryPerMonth*12)- (5*10^5));
			rebate = 0;
		}
		
	}
	void display(){
		System.out.println("Name: " + taxPayeeName);
		System.out.println("Age: " + taxPayeeAge);
		System.out.println("Salary Per Month" + salaryPerMonth);
		System.out.println("Tax: " + tax);
		System.out.println("Rebate: " + rebate);
	}
	public static void main(String[] args) {
		incomeTax Employee = new incomeTax();
		Scanner input = new Scanner(System.in);
		System.out.println("Enter the name of the employee: ");
		Employee.taxPayeeName = input.next();
		System.out.println("Enter the age of the employee: ");
		Employee.taxPayeeAge = input.nextInt();
		System.out.println("Enter the salary per month of the employee: ");
		Employee.salaryPerMonth = input.nextDouble();
		Employee.computeTax();
		Employee.display();
	}
}
