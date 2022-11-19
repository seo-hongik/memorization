//��Ű���̸��� kakaoGame�Դϴ�.
package kakaoGame;

import java.util.Scanner;

//playGameEngine Ŭ������ �����մϴ�.
public class PlayGameEngine {

	
	//�ʵ� (�������)�� �����մϴ�.
	private Character character;    //ĳ����
	private int menu;			    //�޴�
	private boolean exit;		    //����
	
	
	
	//�Ű� ������ �ִ� �����ڸ� �����մϴ�. 
	public PlayGameEngine(Character character) {
		
		this.character=character;
	}
	
	//�޴��� ����ϴ� �޼��带 �����մϴ�. 
	
	public void printMenu(Scanner sc) {
		System.out.println("1.��Ա� 2.������ 3.����ֱ� 4.��ϱ� 5.����");
		menu=sc.nextInt();
		//The method play() is undefined for the type PlayGameEngine
		//play()�޼��� ȣ���մϴ�.
		play();
	}
	//�޴� ���ÿ� ���� Character�� �ش� �ż��带 ȣ�����ִ� play()�޼��带 �����մϴ�. 
	public void play() {
		// TODO Auto-generated method stub
		switch(menu) {
		case 1://1.����̱�
			character.eat();
			break;
		case 2://2.������
			character.sleep();
			break;
			
		case 3://3.����ֱ� 
			character.play();
			break;

		case 4://4.��ϱ�
			character.train();
			break;	
		case 5://5.����
			exit=true;
			
		
		}
		//ĳ������ ���� ������ ����ϱ� ���� printInfo()�޼��带 ȣ���մϴ�.
		character.printInfo();
	}

	//�ʵ�(��� ����)�� �����ϱ� ���Ͽ� get(),set()�޼��带 �����մϴ�.
	
	public Character getCharacter() {
		return character;
	}

	public void setCharacter(Character character) {
		this.character = character;
	}

	public int getMenu() {
		return menu;
	}

	public void setMenu(int menu) {
		this.menu = menu;
	}

	public boolean isExit() {
		return exit;
	}

	public void setExit(boolean exit) {
		this.exit = exit;
	}
	
}