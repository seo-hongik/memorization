
public class Ex04 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int age = 17;
		int charge;
		
		if(age < 8) {
			charge = 1000;
			System.out.println("������ �Ƶ� �Դϴ�.");
		} else if(age < 14) {
			charge = 2000;
			System.out.println("�ʵ��Դϴ�");
		} else if (age < 20) {
			charge = 2500;
			System.out.println("�߰���Դϴ�.");
		} else {
			charge = 30000;
			System.out.println("�����Գ���");
		}
		
		System.out.println("������ " +charge+ "���Դϴ�.");
	}

}
