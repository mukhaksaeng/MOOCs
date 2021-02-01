
import java.util.Scanner;

public class NumberAndSumOfNumbers {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int numNumbers = 0;
        int sum = 0;
        
        while (true){
            System.out.println("Give a number:");
            int number = Integer.valueOf(scanner.nextLine());
            
            if (number == 0){
                break;
            } else {
                numNumbers += 1;
                sum += number;
            }
        }
        System.out.println("Number of numbers: " + numNumbers);
        System.out.println("Sum of the numbers: " + sum);
    }
}
