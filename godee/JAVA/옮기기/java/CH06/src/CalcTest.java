class Calc {
	
}

public class CalcTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int[] num = {10}; // �ݹ��̷��۷���
		System.out.println(num[0]);
		change(num);
		System.out.println(num[0]);
		
		int num1 =10; //�ݹ��̹߷�
		System.out.println(num1);
		testValue(num1);
		System.out.println(num1);
	}
	
	static void testValue(int num1) {
		num1=100;
		System.out.println(num1);
	}
	
	static void change(int[] num) {
		num[0] = 100;
		System.out.println(num[0]);
	}
}
