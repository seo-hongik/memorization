//��Ű�� �̸��� constructorTest�Դϴ�.
package constructorTest;

//Ŭ���� �̸��� Person�Դϴ�.

class Person{

	//�ʵ�(�������)�� �����մϴ�.
	//�̸�
	String name;
	
	//Ű
	int height;
	
	//������
	double weight;
	
	//����
	
	char gender;
	
	//��ȥ ����
	boolean married;
	
	//����Ʈ ������(�ڹ� �����Ϸ��� �ڵ����� ������ �ݴϴ�.)
	public Person() {}
	
	
	//��� �̸��� �Ű� ������ �Է� �޾� Person Ŭ������ �����ϴ� ������
	
	public Person(String pName) {
		
		name =pName;
		
		
		
	}
	
	//�̸� Ű �����Ը� �Ű� ������ �Է� �޴� ������
	
	public Person(String pName, int pHeight, double pWeight) {
		
		name =pName;
		height=pHeight;
		weight=pWeight;
		
		
	}
	
}

//Ŭ���� �̸��� PersonTest�Դϴ�.
public class PersonTest {
	
	//main() �޼��尡 �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//���� �ذ��� 1-����Ʈ �����ڸ� �����
		Person person1=new Person();

		//���� �ذ��� - �Ű������� �ִ� �����ڸ� �����
		Person person2=new Person("���̾�");
		
		//����Ʈ �����ڷ� Ŭ������ ������ �� �ν��Ͻ� ���� ���� ���� �ʱ�ȭ �մϴ�.
		Person person3=new Person();
		person3.name="����";
		person3.height=170;
		person3.weight=60.9;
		
		//�������̸� �ؿ� ���·� ����� �ִ°� �ٶ����ϴ�.
		
		//�ν��Ͻ� ���� �ʱ�ȭ�� ���ÿ� Ŭ������ �����մϴ�.
		//-->�ڵ嵵 �����ϰ� ����ϱ⵵ ���ϴٴ� ������ �����ϴ�.
		Person person4=new Person("����ġ",180,40.5);
	}

}
