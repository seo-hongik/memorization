//��Ű�� �̸��� kakaoGame�Դϴ�.
package kakaoGame;

//Muzi Ŭ������ �����մϴ�.
//Muzi Ŭ������ Charater Ŭ������ ��ӹ޽��ϴ�.
public class Muzi extends Character {

	//����Ʈ �����ڸ� �����մϴ�. 
	public Muzi() {
		hp=20;
		energy=30;
		System.out.println("������ �����Ǿ����ϴ�.");
		printInfo();
	}
	
	
	@Override
	public void eat() {
		// TODO Auto-generated method stub
		energy+=5;
	}

	@Override
	public void sleep() {
		// TODO Auto-generated method stub
		energy+=20;
	}

	@Override
	public boolean play() {
		// TODO Auto-generated method stub
		energy-=10;
		hp+=15;
		levelUp();
		return checkEnergy();
	}

	@Override
	public boolean train() {
		// TODO Auto-generated method stub
		energy-=10;
		hp+=20;
		levelUp();
		return checkEnergy();
	}

	@Override
	public void levelUp() {
		// TODO Auto-generated method stub
		if(35<=hp) {
		level++;
		hp-=35;
		}
	}

}
