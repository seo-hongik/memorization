package sec03;

class Car{
	
	private int num;
	private double gas;
	
	public void show() {
		System.out.println("���� ��ȣ��"+num+"�Դϴ�.");
		System.out.println("���ᷮ��"+gas+"�Դϴ�.");
	}
	//�޼ҵ� �����ε�!!(�μ���: Ÿ���� �ٸ��ų� ������ �ٸ��ų� [�޼���� ���� return��(x)])
	// void ��ȯ��
	//�����ڴ� �ʵ带 �ʱ�ȭ �ϴ� �������� ���(��������)
	public void setCar(int num) {
		
		this.num=num;
		System.out.println("���� ��ȣ�� "+this.num+"���� �ٲپ����ϴ�.");
	}
	
	public void setCar(double gas) {
		this.gas=gas;
		System.out.println("���ᷮ��"+this.gas+"���� �ٲپ����ϴ�.");
		
	}
	public void setCar(int num,double gas) {
		this.num=num;
		this.gas=gas;
		
		System.out.println("���� ��ȣ��"+this.num+"����, ���ᷮ��"+this.gas+"�� �ٲپ����ϴ�.");
	
	}
}


public class Sample03 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Car car1 =new Car();//��ü�� ���� �ʱ�ȭ ��Ű�� ����
		car1.show();
		car1.setCar(100);//Ÿ���� ���� ���� 
		car1.show();
		car1.setCar(12.345);
		car1.show();
		car1.setCar(10,12.789);
		car1.show();
	}

}
