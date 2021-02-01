
import java.util.Scanner;

public class NumberOfNumbers {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int numNumbers = 0;
        
        while (true){
            System.out.println("Give a number:");
            int number = Integer.valueOf(scanner.nextLine());
            
            if (number == 0){
                break;
            } else{
                numNumbers += 1;
            }
        }
        
        System.out.println("Number of numbers: " + numNumbers);
    }
}
