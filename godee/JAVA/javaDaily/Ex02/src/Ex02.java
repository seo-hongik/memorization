import java.util.Scanner;

public class Ex02 {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int j = 1;
		int pure = sc.nextInt();

		if (pure > 0) {

			System.out.println();

			while (true) {

				if (pure == 0) {

					break;

				}

				System.out.print(pure + "*");
				j *= pure--;
				
				
			}
			System.out.println("�����:"+j);
		}

	}
}
