package sec02;

class Car{
	
	private int num;//ĸ��ȭ -�������� - �������̼� ���̵�
	private double gas;
	
	public void show() {
		System.out.println("���� ��ȣ��"+num+"�Դϴ�.");
		System.out.println("���ᷮ��"+gas+"�Դϴ�.");
	}
	
	public void SetNumGas(int num,double gas) {
		if(gas>0&&gas<1000) {
	
		this.num=num;
		this.gas=gas;
		
		System.out.println("���� ��ȣ��"+this.num+"����, ���ᷮ��"+this.gas+"�� �ٲپ����ϴ�.");
		
		}else {
			//this.gas�� �ʱⰪ�� ��ȯ�ϹǷ� 0.0
			//gas�� SetNumGas���� ���� �Ķ���� ��
			System.out.println(gas+"�� �ùٸ� ���ᷮ�� �ƴմϴ�.");
		}
	
	}
	
}

public class Sample02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Car car1=new Car();//new�� ���� �⺻�����ڰ� �Ҹ���.
		
		car1.show();
		/*int num=100; �ʽ��� �����ϴ� ���� �� ���� ���� set�޼ҵ带 ��� ������
		double gas=-12.345;*/
		car1.SetNumGas(100, -12.425);//set�޼ҵ�� ���ڰ��� �ٲ۴�
		car1.show();//�Լ� ȣ��
		
	}

}
