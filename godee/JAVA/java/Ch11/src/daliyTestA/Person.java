package daliyTestA;

class Man{
	
	int age;
	
	String name="james";
	
	boolean isMarried;
	
	int childNumber;
	
	//���� �˾Ƴ���
	int getManAge(){
		
		
		return age;
	}
	
	
	
	//�̸��˾Ƴ���
	
	String getManName() {
		
		
		return name;
	}
	

	//��ȥ�����˾Ƴ���
	
	boolean getIsMarried() {
		
		
		return isMarried;
	}
	
	//���� ����
	
	void setAge(int age) {
		
		this.age=age;
		
	}
	
	
	
	
}

	



public class Person {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Man man= new Man();
		
		man.setAge(40);
		
		System.out.println(man.getManAge());
		
	}

}