//package�̸��� gameTest�Դϴ�.
package gameTest;

//Player��� Ŭ������ ���ǵǾ����ϴ�.


public class Player {

	//Player�� ������ ���� ������ �����մϴ�.
	
	//has a ���� 
	private PlayerLevel level;
	
	
	//����Ʈ �����ڸ� �����մϴ�;
	public Player(){
		
	//ó�� �����Ǹ� BeginnerLevel�� �����մϴ�.
		level=new BeginnerLevel();
		level.showLevelMessage();
		
	}
	
	//���� �÷��̾ Level���� �������� get()�޼ҵ带 ����ϴ�.
	
	public PlayerLevel getLevel() {
		
		
		return level;
	}
	//Level ���� �޼ҵ带 �����մϴ�.
	//�Ű����� �ڷ����� ��� ������ ��ȯ ������ PlayerLevel ������ �����մϴ�.
	
	public void upradeLevel(PlayerLevel level) {
		
		this.level=level;
		//���� �޽��� ���
		level.showLevelMessage();
	}
	//PlaterLevel go()�� ȣ���ϴ� play() �޽����� �����մϴ�.
	public void play(int count) {
		
		level.go(count);
		
		
		
	}
	
	


	
	
}