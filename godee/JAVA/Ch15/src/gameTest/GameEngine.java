//package�̸��� gameTest�Դϴ�.
package gameTest;

//Ŭ���� �̸��� GameEngine �Դϴ�. 
public class GameEngine {
	//main method()�� �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//Player �����մϴ�.
		//ó�� �����ϸ� BeginnerLevel�Դϴ�.
		Player player = new Player();
		player.play(1);
		
		System.out.println();
		
		//�߱��� ���� aPlayer�� �����մϴ�.
		AdvancedLevel aPlayer = new AdvancedLevel();
		player.upradeLevel(aPlayer);
		player.play(2);
		
		System.out.println();
		//������ ���� sPlayer�� �����մϴ�.
		SuperLevel sPlayer= new SuperLevel();
		player.upradeLevel(sPlayer);
		player.play(3);
		
	}

}