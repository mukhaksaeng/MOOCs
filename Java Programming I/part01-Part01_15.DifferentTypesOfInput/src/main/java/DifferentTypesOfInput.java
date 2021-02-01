
import java.util.Scanner;

public class DifferentTypesOfInput {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.println("Give a string:");
        String var1 = scan.nextLine();
        System.out.println("Give an integer:");
        int var2 = Integer.valueOf(scan.nextLine());
        System.out.println("Give a double:");
        double var3 = Double.valueOf(scan.nextLine());
        System.out.println("Give a boolean:");
        boolean var4 = Boolean.valueOf(scan.nextLine());
        
        System.out.println("You gave the string " + var1);
        System.out.println("You gave the integer " + var2);
        System.out.println("You gave the double " + var3);
        System.out.println("You gave the boolean " + var4);
    }
}
