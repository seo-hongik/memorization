//package�̸��� templetTest�Դϴ�.
package templetTest;

//Car �߻�Ŭ������ �����մϴ�.
public abstract class Car {
	//�߻� �޼��带 �����մϴ�. 
	
	public abstract void drive();
	public abstract void stop();
	
	//�޼��� (��� �Լ�)�� �����մϴ�.
	public void startCar() {
		System.out.println("�õ��� ŵ�ϴ�.");
	}
	
	public void turnOff() {
		System.out.println("�õ��� ���ϴ�.");
	}
	
	//���ø� �޼��带 �����մϴ�.
	 final void run() {
		
		startCar();
		drive();
		stop();
		turnOff();
		
	}
	
}