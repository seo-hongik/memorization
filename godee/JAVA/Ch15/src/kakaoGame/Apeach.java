//��Ű�� �̸��� kakaoGame�Դϴ�.
package kakaoGame;


//Apeach Ŭ������ Character Ŭ������ ��� �޽��ϴ�.
public class Apeach extends Character {
	
	
	//����Ʈ �����ڸ� �����մϴ�
		Apeach(){
			
			hp=40;
			energy=50;
			System.out.println("����ġ�� �����Ǿ����ϴ�");
			printInfo();
			
		}

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		energy+=15;
		
	}

	@Override
	public void sleep() {
		// TODO Auto-generated method stub
		energy+=10;
	}

	@Override
	public boolean play() {
		// TODO Auto-generated method stub
		energy-=30;
		hp+=15;
		return checkEnergy();
	}

	@Override
	public boolean train() {
		// TODO Auto-generated method stub
		energy-=20;
		hp+=30;
		levelUp();
		return checkEnergy();
	}
	@Override
	public void levelUp() {
		if(35<=hp) {
		level++;
		hp-=50;
		}
		// TODO Auto-generated method stub
		
	}

}
