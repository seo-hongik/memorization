package sec08;

class Car{
	
	private int num;
	private double gas;
	
	private String name;
	
	public Car() {
		
		num=0;
		gas=0.0;
		name="ȫ�浿";
		System.out.println("�ڵ����� �����Ǿ����ϴ�.");
		
		
	}
	
public void show() {
		
		System.out.println("������ȣ��" +num+"�Դϴ�.");
		System.out.println("���ᷮ��"+gas+"�Դϴ�.");
		System.out.println("�̸���"+name+"�Դϴ�.");
}
	
	
	public void setCar(int num, double gas) {
		
		this.num =num;
		this.gas = gas;
		System.out.println("������ȣ��"+num+"����,���ᷮ��"+gas+"�Դϴ�.");
	}
	
	public void setCar(String name) {
		this.name =name;
		System.out.println("�����̸���"+name+"�Դϴ�.");
	}
}


public class Sample08 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Car car1;
		car1=new Car();
		
		car1.show();
		
		int number = 1234;
		double gasoline=1.987;
		String carName ="1ȣ";
		
		car1.setCar(number,gasoline);
		car1.show();
		
		
	}

}