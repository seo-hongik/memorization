//package�̸��� gameTest�Դϴ�.
package gameTest;
//AdvancedLevel Ŭ������ �����մϴ�.
//AdvancedLevel Ŭ������ PlayerLevel Ŭ������ ��ӹ޽��ϴ�.
public class AdvancedLevel extends PlayerLevel {

	@Override
	public void run() {
		// TODO Auto-generated method stub
		System.out.println("������ �޸��ϴ�");
	}
	
	@Override
	public void jump() {
		// TODO Auto-generated method stub
		System.out.println("���� ������ �� �ֽ��ϴ�.");
	}

	@Override
	public void turn() {
		// TODO Auto-generated method stub
		System.out.println("�� �� �� �����ϴ�.");
	}

	@Override
	public void showLevelMessage() {
		// TODO Auto-generated method stub
		System.out.println("�߱��� �����Դϴ�.");
		
	}

}
