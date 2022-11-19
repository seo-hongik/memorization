//package�̸��� polymorphismTest�Դϴ�.
package downCastingTest;

import java.util.ArrayList;


//���� Ŭ���� Animal�� �����մϴ�.

class Animal {
	
	
	//�޼���(�ɹ� �Լ���) �����մϴ�.
	
	public void move() {
		
		System.out.println("������ �����Դϴ�.");
		
	}
	
}

//AnimalŬ������ ��� ���� Human Ŭ������ �����մϴ�. 


class Human extends Animal{

	//Animal Ŭ������ ���� �������� move() �żҵ带 �������մϴ�.
	@Override
	public void move() {
		// TODO Auto-generated method stub
		System.out.println("����� �� �߷� �Ƚ��ϴ�.");
	}
	
	//Human Ŭ������ �����ϴ� readBook()�޼��带 �����մϴ�.
	public void readBook() {
		
		System.out.println("����� å�� �н��ϴ�.");
		
		
	}
	

}

//Animal Ŭ������ ��ӹ��� tiger Ŭ������ �����մϴ�.

class Tiger extends Animal{
	//Animal Ŭ������ ���� �������� move() �żҵ带 �������մϴ�.
	@Override
	public void move() {
		// TODO Auto-generated method stub
		System.out.println("ȣ���̰� �� �߷� �ݴϴ�.");
	}
	//tiger Ŭ������ �����ϴ� hunting() �޼��带 �����մϴ�.
	
	public void hunting() {
	
		System.out.println("ȣ���̰� �� �߷� �ݴϴ�.");
	}
	
	
}

//Animal Ŭ������ ��ӹ��� Eagle Ŭ������ �����մϴ�.

class Eagle extends Animal{
	//Animal Ŭ������ ���� �������� move() �żҵ带 �������մϴ�.
	@Override
	public void move() {
		// TODO Auto-generated method stub
		System.out.println("�������� �ϴ��� ���ϴ�.");
	}
	
	//tiger Ŭ������ �����ϴ� hunting() �޼��带 �����մϴ�.
	public void flying() {
		// TODO Auto-generated method stub
		System.out.println("\"�������� ������ �� ��� �ָ� ���ư��ϴ�.\"");
	}
	
	
	
}

//AnimalTest1 class�� ���ǵǾ����ϴ�
public class AnimalTest {
	
	//�迭�� �ڷ����� Animal�� �����մϴ�.
	ArrayList <Animal> animalList =new ArrayList();

	
	//main()�޼ҵ尡 �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		AnimalTest animalTest = new AnimalTest();
		//��� ȣ���� �������� �߰��ϴ� Addanimal();
		animalTest.addAnimal();
		
		//�ٿ�ĳ��Ƽ�� �ϱ� ���� downCasting() �޼��带 ȣ���մϴ�.
		animalTest.downCasting();
		
		
	}
	//��� ȣ���� �������� �߰��ϴ� addAnimal()�޼��� �����մϴ�. 
	public void addAnimal() {
		//animalList�� ��ü�� �߰��մϴ�.
		animalList.add(new Human());//�����ǰ� �������� ������ �������� �ȵ������� ������ animal��
		animalList.add(new Tiger());
		animalList.add(new Eagle());
		
		//�迭 ��Ҹ� Animal ������ ������ move �޼��带 ȣ���ϸ� ������ �� �Լ��� ȣ��˴ϴ�..
		
	
		
		for(Animal animal: animalList) {
			
			animal.move();
		}
		
			
		
	}
	//�ٿ� ĳ������ ���� downCasting()�޼��带 ȣ���մϴ�. 
	
	public void downCasting() {
		//��� �迭 ��Ҹ� �ϳ��� ���鼭 Animal
		for(int i=0; i<animalList.size(); i++) {
			
			//Animal Ÿ������ �����ɴϴ�.
			Animal animal=animalList.get(i);
			
			
			if(animal instanceof Human ) {//���࿡ Human�̶�� 
				//Human Ŭ���������� �ٿ��ɽ��� �մϴ�.
				 Human human = (Human)animal ;
				 
				 //Human Ŭ������ ������ �ִ� readBook() �޼��带 ȣ���մϴ�.
				 human.readBook();
				 
			}else if(animal instanceof Tiger) {//���࿡ Tiger���
				
				//Tiger Ŭ���������� �ٿ��ɽ����մϴ�.
				Tiger tiger= (Tiger) animal;
				
				//Tiger Ŭ������ ������ �ִ� hunting() �޼��带 ȣ���մϴ�.
				tiger.hunting();
				
				
			}else if(animal instanceof Eagle) {//���࿡ Eagle�̶��
				//Eagle Ŭ���������� �ٿ��ɽ����մϴ�.
				Eagle eagle = (Eagle) animal;
				//Eagle Ŭ������ ������ �ִ� flying()�޼��带 ȣ���մϴ�
				eagle.flying();
				
			}else{
				System.out.println("�������� ���� ���Դϴ�.");
			}
			
		}


		
		
		
		
	}
	
	

}