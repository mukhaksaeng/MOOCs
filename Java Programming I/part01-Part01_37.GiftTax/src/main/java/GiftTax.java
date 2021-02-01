
import java.util.Scanner;

public class GiftTax {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        
        System.out.println("Value of the gift?");
        double value = Double.valueOf(scan.nextLine());
        
        if (value < 5000){
            System.out.println("No tax!");
        } else if (value <= 25000){
            double lowerLimit = 5000;
            double fixedTax = 100;
            double taxRate = 0.08;
            double tax = fixedTax + (value - lowerLimit) * taxRate;
            System.out.println("Tax: " + tax);
        } else if (value <= 55000){
            double lowerLimit = 25000;
            double fixedTax = 1700;
            double taxRate = 0.1;
            double tax = fixedTax + (value - lowerLimit) * taxRate;
            System.out.println("Tax: " + tax);
        } else if (value <= 200000){
            double lowerLimit = 55000;
            double fixedTax = 4700;
            double taxRate = 0.12;
            double tax = fixedTax + (value - lowerLimit) * taxRate;
            System.out.println("Tax: " + tax);
        } else if (value <= 1000000){
            double lowerLimit = 200000;
            double fixedTax = 22100;
            double taxRate = 0.15;
            double tax = fixedTax + (value - lowerLimit) * taxRate;
            System.out.println("Tax: " + tax);
        } else {
            double lowerLimit = 1000000;
            double fixedTax = 142100;
            double taxRate = 0.17;
            double tax = fixedTax + (value - lowerLimit) * taxRate;
            System.out.println("Tax: " + tax);
        }
    }
}