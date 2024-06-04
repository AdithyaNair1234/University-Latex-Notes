// 1. Using while loop print the sum of the first n numbers, where n is input by the user.

import java.util.Scanner;

public class Q1 {
  public static void main(String[] args) {
    int n;
    Scanner input = new Scanner(System.in);
    System.out.println("Enter input value:: ");
    n = input.nextInt();
    int sum=0;
    for(int i = 1;i<=n;i++){
      sum += i;
    }
    System.out.println("The final sum of the first "+n+" numbers is:"+sum);
  }
}

