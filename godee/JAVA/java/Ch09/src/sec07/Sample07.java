package sec07;


class Car{
	
	private int num;
	private double gas;
	
	public Car() {
		
		num=0;
		gas=0.0;
		System.out.println("�ڵ����� �����Ǿ����ϴ�.");
		
		
	}
	
	public void show() {
		
		System.out.println("������ȣ��" +num+"�Դϴ�.");
		System.out.println("���ᷮ��"+gas+"�Դϴ�.");
	}
	
	public void setCar(int num, double gas) {
		
		this.num =num;
		this.gas = gas;
		System.out.println("������ȣ��"+num+"����,���ᷮ��"+gas+"�Դϴ�.");
	}
}


public class Sample07 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		System.out.println("car1�� �����߽��ϴ�.");
		Car car1=new Car();
		
		car1.setCar(1000,123.456);
		
		Car car2;
		System.out.println("car2�� �����߽��ϴ�.");
		
		car2=car1;
		System.out.println("car2�� car1�� �����߽��ϴ�.");
		
		car1.show();
		car2.show();
		
		car1.setCar(2345, 10.567);
		System.out.println("car1�� ������ �����մϴ�.");
		
		car1.show();
		car2.show();
		

	}

}