//��Ű���� kakaoGame;
package kakaoGame;

//�߻�Ŭ���� Charater�� �����մϴ�.

public abstract class Character  {

	//�ʵ� (�������)�� �����մϴ�. 
	protected int hp;
	protected int level;
	protected int energy;
	
	//�߻� �޼��带 �����մϴ�. 
	public abstract void eat();
	public abstract void sleep();
	public abstract boolean play();
	public abstract boolean train();
	public abstract void levelUp();
	
	//�޼��� (����Լ�)�� �����մϴ�.
	public boolean checkEnergy() {
		
		if(energy<=0) {
			
			return true;
		}else {
			
			return false;
		}
		
	}
	//ĳ���� ������ ����ϴ� �޼��带 �����մϴ�.
	public void printInfo() {
		
		
		System.out.println("=========���� ĳ������ ���� ���=========");
		System.out.println("hp  :"+hp);
		System.out.println("energy :"+energy);
		System.out.println("level  :"+level);
	}

}