package sec01;

class Car{
	
	int num;
	double gas;
	
	
	void show() {
		System.out.println("���� ��ȣ��"+num+"�Դϴ�.");
		System.out.println("���ᷮ��"+gas+"�Դϴ�.");
	}
}

public class Sample01 {

	public static void main(String[] args) {
		//public ��𼭳� �� �� ���ִ°�(Ŭ������ public�� �Ⱥ��ΰ��� ����Ʈ������ ���ֱ� ������ �ʵ��տ� (private) �޼ҵ�տ� (public) 
		// TODO Auto-generated method stub
		
		Car car1=new Car();
		
		car1.num = 1234;
		car1.gas = 90.1234;
		car1.show();

	}

}
