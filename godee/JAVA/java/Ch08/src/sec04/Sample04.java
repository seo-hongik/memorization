package sec04;

class Car{
	//�⺻������ void������ ���� �빮��
	
	private int num;
	private double gas;
	public Car() {
		//�⺻�����ڴ� ����� ���ÿ� �ʱ�ȭ �Ϸ��� ����. �⺻�ɼ�
		
		this.num=10;
		this.gas=34.567;
		System.out.println("�ڵ����� �����Ǿ����ϴ�.");	
		
	}
	
	public void show() {
		System.out.println("���� ��ȣ��"+num+"�Դϴ�.");
		System.out.println("���ᷮ��"+gas+"�Դϴ�.");
	}
	
}

public class Sample04 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Car car1= new Car();
		car1.show();

	}

}
