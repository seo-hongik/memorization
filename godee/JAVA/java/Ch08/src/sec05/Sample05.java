package sec05;

class Car{
	
	private int num;
	private double gas;
	//������ �����ε��� �Ұ�� (�Ű������� �ִ� �����ڸ� ������) �⺻������(�Ű������� ���� ������)�� �� �������Ѵ�.
	
	
	
	//�⺻������-�Ű������� ���� ������
	
	public Car() {
		
		this.num=0;
		this.gas=0.0;
		System.out.println("�ڵ����� �����Ǿ����ϴ�.");
		
		
	}
	
	
	//������ �����ε�-�Ű������� �ִ� ������
	public Car(int num, double gas) {
		this.num =num;
		this.gas=gas;
		System.out.println("������ȣ��"+this.num+"�̰�, ���ᷮ��"+this.gas+"�� �ڵ����� �����Ǿ����ϴ�.");
		
	}
	public void show() {
		System.out.println("���� ��ȣ��"+num+"�Դϴ�.");
		System.out.println("���ᷮ��"+gas+"�Դϴ�.");
	}
	
	
}

public class Sample05 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car car1=new Car();
		car1.show();
		
		Car car2=new Car(1234,567.123);
		car2.show();
				
		
	}

}