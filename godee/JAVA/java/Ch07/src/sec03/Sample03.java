package sec03;


class Car{
	
	int num;
	double gas;
	
	void show() {
		System.out.println("���� ��ȣ��"+this.num+"�Դϴ�.");
		System.out.println("���ᷮ��"+this.gas+"�Դϴ�.");
		
	}
	
	void showCar() {
		System.out.println("���ݺ��� �ڵ����� ������ ǥ���մϴ�.");
		show();//�Լ��ȿ� �ٸ��Լ��� ȣ�� �� �� �ִ�.
		
		
	}
	
}


public class Sample03 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car car1 = new Car();
		
		car1.num = 5678;
		car1.gas= 95.1234;
		car1.showCar();
	}

}
