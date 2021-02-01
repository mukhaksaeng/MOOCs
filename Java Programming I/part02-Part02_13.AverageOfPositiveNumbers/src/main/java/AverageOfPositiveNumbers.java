
import java.util.Scanner;

public class AverageOfPositiveNumbers {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int numPositives = 0;
        int sum = 0;
        
        while (true){
            System.out.println("Give a number:");
            int number = Integer.valueOf(scanner.nextLine());
            
            if (number == 0){
                break;
            } else if (number > 0) {
                numPositives += 1;
                sum += number;
            }
        }
        
        if (numPositives > 0){
            System.out.println((double) sum / numPositives);
        } else{
            System.out.println("Cannot calculate the average");
        }
    }
}
