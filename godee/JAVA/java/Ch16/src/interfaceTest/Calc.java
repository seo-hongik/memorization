//��Ű�� �̸��� interfaceTest �Դϴ�.
package interfaceTest;

//�������̽��� ���������ڿ� final�� �ʿ䰡 ����. 

// Calc �������̽��� �����մϴ�. 
public interface Calc {

	//�ʵ�(�������)�� �����մϴ�. 
	
	//�������̽����� ������ ������ ������ ���������� ����� ��ȯ�˴ϴ�.
	//final �Ⱥٿ�����
	double PI=3.14;
	int ERROR=-9999;
	
	//�޼���(����Լ�)�� �����մϴ�. 
	//�������̽����� ������ �޼���� ������ �������� �߻� �޼���� ��ȯ�˴ϴ�. 
	int add(int num1, int num2);
	int substract(int num1, int num2);
	//�޼��� �̸��� multiply�� �Ͽ��� �����մϴ�.
	int times(int num1, int num2);
	int divide(int num1, int num2);
	
	//����Ʈ �޼��� 
	default void description() {
		System.out.println("���� ���⸦ ���� �մϴ�.");
		myMethod();
	}
	
	//�����޼���
	static int total(int[] arr)  {
		int total=0;
		
		for(int i: arr) {
			
			total+=i;
		}
		
		//private static �޼��带 ȣ���մϴ�. 
		myStaticMethod();
		return total;
	}
	
	//private �޼��带 �����մϴ�. 
	private void myMethod(){
		System.out.println("private �޼��� �Դϴ�. ");
	}
	
	//private static �޼��带 �����մϴ�. 
	private static void myStaticMethod() {
		System.out.println("private static �޼��� �Դϴ�. ");
	}
	
	
	
	
	
}
