//��Ű�� �̸��� kakaoGame�Դϴ�
package kakaoGame;

//Ryan Ŭ������ �����մϴ�.
//Ryan Ŭ������ Charater Ŭ������ ��� �޽��ϴ�. 
public class Ryan extends Character {
	
	//����Ʈ �����ڸ� �����մϴ�
	Ryan(){
		
		hp=30;
		energy=50;
		System.out.println("���̾��� �����Ǿ����ϴ�");
		printInfo();
		
	}
	

	@Override
	public void eat() {
		// TODO Auto-generated method stub
		energy+=10;
		
	}

	@Override
	public void sleep() {
		// TODO Auto-generated method stub
		energy+=5;
	}

	@Override
	public boolean play() {
	
		// TODO Auto-generated method stub
		energy -=20;
		hp+=5;
		levelUp();
		return checkEnergy();
		
		
	}

	@Override
	public boolean train() {
		// TODO Auto-generated method stub
		energy -=15;
		hp+=20;
		levelUp();
		return false;
	}

	@Override
	public void levelUp() {
		// TODO Auto-generated method stub
		if(40<=hp) {
			level++;
			hp-=40;
		}
		
		
	}

}
