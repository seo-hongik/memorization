package sec02;



class Car{
	
	
	private int num;
	private double gas;
	
	/*public Car(int num, double gas) {
		super();
		this.num = num;
		this.gas = gas;
	}*/
	
	/*public Car() {
		super();
	}*/

	public Car() {//�⺻������
		num=0;
		gas=0.0;
		System.out.println("�ڵ����� �����Ǿ����ϴ�.");
	}
	
	public Car(int num, double gas) {
		this.num=num;
		this.gas=gas;
		System.out.print("������ȣ��"+this.num+"�̰�");
		System.out.println("���ᷮ��"+this.gas+"�� �ڵ����� �����Ǿ����ϴ�.");
	}
	
	public void setCar(int num, double gas) {
		
		this.num =num;
		this.gas=gas;
		System.out.println("������ȣ��"+num+"���� �����Ͽ����ϴ�.");
		System.out.println("���ᷮ��" + gas+"���� �����Ͽ����ϴ�.");
			
		
	}
	public void show() {
		
		System.out.println("������ȣ��" +num+"�Դϴ�.");
		System.out.println("���ᷮ��"+gas+"�Դϴ�.");
	}
	
}
class RacingCar extends Car{
	
	private int course;
	
	public RacingCar() {
		course=0;
		System.out.println("���̽�ī�� �����Ǿ����ϴ�.");
		
	}
	
	//�ٽ�
	public RacingCar(int num, double gas, int course) {
		
		super(num,gas);
		
		this.course =course;
		
		System.out.println("�ڽ���ȣ��"+course+"�� ���̽�ī�� �����Ǿ����ϴ�.");
	}
	
	public void setCourse() {
		course = course;
		System.out.println("�ڽ���ȣ��"+course+"�� ����Ǿ����ϴ�.");
		
	}
	
	
}
public class Sample02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	RacingCar rcCar1=new RacingCar(123, 567.91, 7);	
		
	}
	
	

}
