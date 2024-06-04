public class printLargest {
	public static void main(String[] args) {
		int a = 100;
		int b = 50;
		float c = 100.0f;
		float d = 50.0f;
		if(a>b){
			if (a>c) {
				if (a>d){
					System.out.println("A");
				}
				else {
					System.out.println("D");
				}
			}
			else {
				if (c>d) {
					System.out.println("C");
				}
				else 
					System.out.println("D");
			}
			
	}
	else {
		if (b>c) {
			if (b>d) {
				System.out.println("B");
			}
			else {
				System.out.println("D");
			}
		}
		else {
			if (c>d) {
				System.out.println("C");
			}
			else {
				System.out.println("D");
			}
		}
	}
	if (b == d)
		System.out.println("B and D are equal");
}
}
