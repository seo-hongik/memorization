//package�̸��� gameTest�Դϴ�.
package gameTest;

//BeginnerLevel Ŭ������ �����մϴ�.
//BeginnerLevel Ŭ������ PlayerLevel Ŭ������ ��ӹ޽��ϴ�.
public class BeginnerLevel extends PlayerLevel {

	
	@Override
	public void run() {
		// TODO Auto-generated method stub
		System.out.println("õõ�� �޸��ϴ�");
	}

	@Override
	public void jump() {
		// TODO Auto-generated method stub
		 System.out.println("������  �Ҽ� �����ϴ�.");
	}

	@Override
	public void turn() {
		// TODO Auto-generated method stub
		 System.out.println("����  �Ҽ� �����ϴ�.");	
	}

	@Override
	public void showLevelMessage() {
		// TODO Auto-generated method stub
		
		 System.out.println("�ʱ��� �����Դϴ�.");
		 
	}

}