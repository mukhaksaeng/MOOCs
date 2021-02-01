
import java.util.Scanner;

public class RepeatingBreakingAndRemembering {

    public static void main(String[] args) {
        
        // This exercise is worth five exercise points, and it is 
        // gradually extended part by part.
        
        // If you want, you can send this exercise to the server
        // when it's just partially done. In that case the server will complain about 
        // the parts you haven't done, but you'll get points for the finished parts.
        
        Scanner scanner = new Scanner(System.in);
        System.out.println("Give numbers:");
        
        int sum = 0;
        int numNumbers = 0;
        int numEven = 0;
        int numOdd = 0;
        
        while (true){    
            int number = Integer.valueOf(scanner.nextLine());
            
            if (number == -1){
                System.out.println("Thx! Bye!");
                System.out.println("Sum: " + sum);
                System.out.println("Numbers: " + numNumbers);
                System.out.println("Average: " + ((double) sum / numNumbers));
                System.out.println("Even: " + numEven);
                System.out.println("Odd: " + numOdd);
                break;
            } else{
                sum += number;
                numNumbers += 1;
                if (number % 2 == 0){
                    numEven += 1;
                } else{
                    numOdd += 1;
                }
            }
        }
    }
}
