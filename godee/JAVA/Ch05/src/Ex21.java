import java.util.Scanner;

public class Ex21 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String[][] words= {
				{"chair","����"},
				{"computer","��ǻ��"},
				{"apple","���"}
		};
		
		Scanner scr = new Scanner(System.in);
		
		for(int i=0; i<words.length; i++) {
			System.out.printf("Q%d. %s�� ����?",i+1,words[i][0]);
			
			String userInput = scr.nextLine();//String ���� �Է¹���
			
			if(userInput.equals(words[i][1])) {
				System.out.println("�����Դϴ�.");
				
			}else {
				System.out.printf("Ʋ�Ƚ��ϴ�. ������%s�Դϴ�.\n",words[i][1]);
			}//end of if
		}//end of for
	}

}
