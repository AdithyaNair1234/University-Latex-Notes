import java.util.Stack;
import java.util.Scanner;
public class InfixToPostfix1
{
    static int precedence(char c)
    {
        switch (c)
        {

            case '+':

            case '-':

                return 1;

            case '*':

            case '/':

                return 2;

            case '^':

                return 3;
        }
        return -1;
}



    static String infixToPostFix(String expression)
    {
          String result = "";
       Stack<Character> stack = new Stack<>();

        for (int i = 0; i <expression.length() ; i++)
        {

            char c = expression.charAt(i);
            if(precedence(c)>0)
            {
             while(stack.isEmpty()==false && precedence(stack.peek())>=precedence(c))
             {
                 result += stack.pop();
                }
             stack.push(c);
                }
            else if(c==')')
            {
                char x = stack.pop();

                while(x!='(')
                {
                    result += x;
                    x = stack.pop();
                }
            }
            else if(c=='(')
            {
            stack.push(c);
            }
            else
            {
                result += c;
            }

         }
      
        while(stack.isEmpty()==false)
        {
            result += stack.pop(); //decreases the size by 1
        }

        return result;

    }

    public static void main(String[] args)
    {
      Scanner input = new Scanner(System.in);
      System.out.println("Enter your expression:");  
      String exp = input.next();
      System.out.println("Infix Expression: " + exp);
      System.out.println("Postfix Expression: " + infixToPostFix(exp));
    }
}
