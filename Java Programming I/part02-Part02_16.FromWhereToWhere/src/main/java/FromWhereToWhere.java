
import java.util.Scanner;

public class FromWhereToWhere {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Where to?");
        int end = Integer.valueOf(scanner.nextLine());
        //int start = 1;
        System.out.println("Where from?");
        int start = Integer.valueOf(scanner.nextLine());
        
        if (start < end){
            for(int i = start; i <= end; i++){
                System.out.println(i);
            }
        } else if (start == end){
            System.out.println(start);
        }
    }
}
