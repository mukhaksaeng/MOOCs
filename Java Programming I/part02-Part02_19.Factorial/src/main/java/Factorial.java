
import java.util.Scanner;

public class Factorial {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("Give a number:");
        int end = Integer.valueOf(scanner.nextLine());
        int prod = 1;
        for(int i = 1; i <= end; i++){
            prod *= i;
        }
        System.out.println("Factorial:" + prod);
    }
}
