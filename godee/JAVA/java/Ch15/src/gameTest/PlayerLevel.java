//package�̸��� gameTest�Դϴ�
package gameTest;


//�߻� Ŭ������ �����մϴ�.
public abstract class PlayerLevel {
	
	//�߻� �޼��带 �����մϴ�.
	
	public abstract void run();
	public abstract void jump();
	public abstract void turn();
	public abstract void showLevelMessage();
	
	
	final public void go(int count) {
		
		run();
		for(int i=0; i<count; i++) {
			jump();
		}
		turn();
	}
	

}
