class MyMath{
	/*�����ε� : �Ű������� �ٸ��ų� Ÿ���� �ٸ��ų�*/
	long add(long num1, long num2) {
		
		long result= num1+num2;
		
		return result;
	}
	
	
	long add(long num1, long num2, long num3) {
		
		long result= num1+num2+num3;
		
		return result;
	}
	
	double add(double num1, double num2) {
		
		double result = num1+num2;
		
		return result;
		
	}
	
	void showMenu() {
		System.out.println("���� ���α׷�");
		//return �ڹ� ���� ��谡 �˾Ƽ� ���ִ� return; �ȴ޾��
	}
	
}


public class MyMathMain {

	public static void main(String[] args) {
		
		
		// TODO Auto-generated method stub
		MyMath myMath = new MyMath();
		
		myMath.showMenu();// ȣ���� ���ϸ� ���ư��� ����
		
		long result =myMath.add(10L,20L);
		System.out.println(result);
		
		double result2 = myMath.add(20.5,30.2);
		System.out.println(result2);
		
		double result3 = myMath.add(10L,20L,30L);
		System.out.println(result3);
	}

}
