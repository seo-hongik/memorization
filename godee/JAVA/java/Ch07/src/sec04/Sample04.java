package sec04;

class Car{
	int num;
	double gas;
	
	void setNum(int n) {
		num = n;
		System.out.println("������ȣ��"+num+"�����Ͽ����ϴ�.");
		
	}
	
	void setGas(double g) {
		gas=g;
		System.out.println("���ᷮ��"+gas+"�����Ͽ����ϴ�.");
	}
	
	void show() {
		System.out.println("������ȣ��" +num+"�Դϴ�.");
		System.out.println("���ᷮ��" +gas+"�Դϴ�.");
		
	}
	
}


public class Sample04 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car car1 = new Car();
		car1.show();
		car1.setNum(1234);
		car1.setGas(10.5678);
		car1.show();

	}

}
