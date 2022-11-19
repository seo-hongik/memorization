//package polymorphismTest�Դϴ�.
package polymorphismTest;



//Animal Ŭ������ �����մϴ�.
class Animal{
	
	//�޼��� (����Լ�)�� �����մϴ�.
	public void move() {
		
		
		System.out.println("������ �����Դϴ�.");
	}
	
	
}
//Human Ŭ������ �����մϴ�.
class Human extends Animal{
	
	//�޼���(��� �Լ�)�� �����մϴ�.
	
	public void move() {
		
		System.out.println("����� �ι߷� �Ƚ��ϴ�.");
		
	}
	
}

//Tiger Ŭ������ �����մϴ�.

class Tiger extends Animal{
	
	
	//�޼���(��� �Լ�)�� �����մϴ�.
	
		public void move() {
			
			System.out.println("ȣ���̰� �� �߷� �ݴϴ�.");
			
		}
	
	
}

//Eagle Ŭ������ �����մϴ�.

class Eagle extends Animal{
	
	public void move() {
		
		System.out.println("�������� �ϴ��� ���ϴ�.");
		
	}


}






//class�̸��� AnimalTest �Դϴ�.
public class AnimalTest {
	//main() �޼��� �� �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AnimalTest aTest = new AnimalTest();
		
		//��� ��ü�� �����Ͽ� �Ű� ������ �����մϴ�.
		
		//Animal animal=new Human(); �� ����
		aTest.moveAnimal(new Human());
		
		//ȣ���� ��ü�� �����Ͽ� �Ű������� �����մϴ�.
		
		//Animal animal=new Tiger();
		aTest.moveAnimal(new Tiger());
		
		
		//������ ��ü�� �����Ͽ� �Ű������� �����մϴ�.
		//Animal animal=new Eagle()
		aTest.moveAnimal(new Eagle());
		
		
		
	}
	//�����̴� ������ �����ϴ� �޼���
	//Animal -> �Ű������� �ڷ����� ���� Ŭ�����Դϴ�.
	public void moveAnimal(Animal animal) {
		//�����ǵ� �޼��带 ȣ���մϴ�.
		animal.move();
		
		
	}

}