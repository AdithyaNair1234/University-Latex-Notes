import java.util.*;
class VarTest2{
public static void main(String[] args) {
	Scanner Scanner = new Scanner(System.in);
	System.out.println("Enter first number:");
	int a = Scanner.nextInt();
	System.out.println("Enter second number:");
	int b = Scanner.nextInt();
	System.out.println("Enter operation(1:addition,2:subtraction,3:multiplication,4:division)");
	int operation = Scanner.nextInt();
	if(operation == 1){
	System.out.println(a+b);
	}
	if(operation == 2){
	System.out.println(a-b);
	}
	if(operation == 3){
	System.out.println(a*b);
	}
	if(operation == 4){
	System.out.println(a/b);
	}
}
}
