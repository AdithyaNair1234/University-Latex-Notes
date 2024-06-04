public class Program4 {
	static int PassFail(int k){
	if(k<=60) 
			System.out.println("Fail");
		else 
			System.out.println("Pass");
	return 0;
	}
	public static void main(String[] args) {
		int x=40;
		PassFail(x);
	}
}
