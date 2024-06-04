import java.util.*;
public class Program3 {
	static int PassFail(int k){
		for(int i = 1; i<=7;i++){
			if(k<60)
				System.out.println("Fail!\n");
			else
				System.out.println("Pass!\n");
		}
	return 0;
	}
	public static void main(String[] args) {
		PassFail(100);
		PassFail(65);
		PassFail(70);
		PassFail(44);
		PassFail(34);
		PassFail(11);
		PassFail(99);
		PassFail(34);
	}
}
