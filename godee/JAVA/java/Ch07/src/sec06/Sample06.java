package sec06;
class Car{
	
	int num;
	double gas;
	
	public int getNum() {
		System.out.println("������ȣ�� ��ȸ�մϴ�.");
		return num;
	}
	public void setNum(int num) {
		this.num = num;
		System.out.println("������ȣ��"+this.num+"���� �����մϴ�.");
	}
	public double getGas() {
		System.out.println("���ᷮ�� ��ȸ�մϴ�.");
		return gas;
	}
	public void setGas(double gas) {
		this.gas = gas;
		System.out.println("���ᷮ��"+this.gas+"���� �����մϴ�.");
	}
	
	void show() {
		System.out.println("������ȣ��"+this.num+"�Դϴ�.");
		System.out.println("���ᷮ��"+this.gas+"�Դϴ�.");		
	}
	
}


public class Sample06 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car car1=new Car();
		car1.show();
		
		car1.setNum(5678);
		car1.setGas(70.967);
		
		int number = car1.getNum();
		double gasoline=car1.getGas();
		
		System.out.println("���� �ڵ����� ������ ���");
		System.out.println("������ȣ��"+number+"�Դϴ�.");
		System.out.println("���ᷮ��"+gasoline+"�Դϴ�.");
		
		

	}

}
