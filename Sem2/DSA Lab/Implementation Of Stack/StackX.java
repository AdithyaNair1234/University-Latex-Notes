import java.util.*;
class StackX{
	int max; int top; int a[];
	StackX(int x){
		max = x;
		top = -1;
		a = new int[max];
	}
	void push(int x){
		if(top == max - 1)
			System.out.println("Overflow");
		else{ 
			top++;
			a[top] = x;
		}
	}
	void pop(){
		int x = a[top];
		top--;
		System.out.println("Successfully deleted: "+x);
		
	}
	void display(){
		for(int i = 0;i<=top; i++){
			System.out.println(a[i]);
		}
	}
	boolean isFull(){
		if(top==max-1)
			return true;	
		else
			return false;
	}
	boolean isEmpty(){
		if(top == -1)
			return true;
		else 
			return false;
	}
	int peek(){
		return a[top];
	}
}
public class Test {
		public static void main(String[] args) {
		System.out.println("Enter the size of the element");
		Scanner input = new Scanner(System.in);
		sizeStack = input.nextInt();
		StackX theStack = new StackX(sizeStack);
		do {
			int opt;
			System.out.println("Enter The Operation For The Stack: ");
			System.out.println("1. Push Element");
			System.out.println("2. Pop Element");
			System.out.println("3. Peek Element");
			System.out.println("4. Check If Stack Is Empty");
			System.out.println("5. Check If Stack Is Full");
			opt = input.nextInt();
			switch (opt) {
				case 1:
					System.out.println("Enter element to be pushed: ");
					int pushEle = input.nextInt();
					theStack.push(pushEle);
					break;
				default:
					break;
			}

			
		} while (true);
		}
}

