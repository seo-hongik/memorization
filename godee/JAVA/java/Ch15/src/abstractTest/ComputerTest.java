//package�̸��� abstractTest �Դϴ�.
package abstractTest;


//class�̸��� ComputerTest�Դϴ�.
public class ComputerTest {

	//main()�� �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Computer ��ü�� �����մϴ�.
		
		//�߻�Ŭ������ ����ü�� ���� ������ �߻�Ŭ������ �ν��Ͻ�ȭ ���� ���Ѵ�. //�߻�Ŭ������ �ν��Ͻ��� ������ �� �����ϴ�.
		//Cannot instantiate the type Computer
		//Computer c1=new Computer();
		
		Computer c2=new Desktop();
		//Cannot instantiate the type Laptop
		
		//�߻�Ŭ������ �ν��Ͻ��� ������ �� �����ϴ�.
		//Computer c3=new Laptop();
		
		Computer c4=new MyLaptop();
		
		c2.turnOn();
		
	}

}