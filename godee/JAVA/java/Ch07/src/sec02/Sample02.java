package sec02;

class Car{
	
	int num;
	double gas;
	
	void show() {//�޼ҵ� ����
		
		
		//this ����ǰ� �ִ� ��ü �ڽ�
		
		
		
		System.out.println("������ȣ��"+num+"�Դϴ�.");
		System.out.println("���ᷮ��"+gas+"�Դϴ�.");
		
	}
	
	
}


public class Sample02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
	Car car1;
	car1= new Car();
		
	//Car car1 = new Car(); �̷��Ե� �� �� �ִ�
		
	car1.num =1234;
	car1.gas = 80.1234;
	
	car1.show();//�޼ҵ� ȣ�� ��� �Լ�
		
		
		
		
	}

}
