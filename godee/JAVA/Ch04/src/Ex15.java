import java.util.Scanner;

public class Ex15 {

	public static void main(String[] args) {
		
		int score=0;
		char grade=' ';
		
		System.out.print("������ �Է��ϼ���>");
		Scanner sc= new Scanner(System.in);
		String tmp =sc.nextLine();
		score = Integer.parseInt(tmp);
		
		System.out.println(score);
	}
	
}
