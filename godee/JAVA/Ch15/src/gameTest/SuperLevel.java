//package�̸��� gameTest �Դϴ�.
package gameTest;

// SuperLevel class�� �����մϴ�.
//SuperLevel Ŭ������ PlayerLevel Ŭ������ ��ӹ޽��ϴ�.
public class SuperLevel extends PlayerLevel{

	@Override
	public void run() {
		// TODO Auto-generated method stub
		System.out.println("��û ���� �޸��ϴ�.");
	}

	@Override
	public void jump() {
		// TODO Auto-generated method stub
		System.out.println("���� ���� �����մϴ�.");
	}

	@Override
	public void turn() {
		// TODO Auto-generated method stub
		System.out.println("�� ���� ���ϴ�.");
	}

	@Override
	public void showLevelMessage() {
		// TODO Auto-generated method stub
		System.out.println("����� �����̺�.");
	}

}
