//��Ű�� �̸��� constructorTest�Դϴ�.
package constructorTest;

//Person Ŭ������ �����մϴ�.
class Person{
	
	//�ʵ�(�������)�� �����մϴ�.
	String name;	//�̸�
	int age;		//����

	//����Ʈ �����ڸ� �����մϴ�.
	Person(){
		//�ּ� �����ϱ� �׷� ������
		//name="�̸�����";
		//age=1;
		//System.out.println("Person ��ü�� �����Ǿ����ϴ�.");
		
		
		//������ �����ε�
		//this ���� ����� Person(String,int) �����ڸ� ȣ���մϴ�.
		this("�̸�����",1);
		System.out.println("Person ��ü�� �����Ǿ����ϴ�.");
		
	}
	
	
	
	//�̸��� ���̸� �ο��ϴ� �Ű������� �ִ� �����ڸ� �����մϴ�.
	public Person(String name, int age) {
		
		this.name = name;
		this.age = age;

	}

	//�ڽ��� �ּҸ� ��ȯ�ϴ� �޼��带 �����մϴ�.
	
	Person returnItSelf() {
		
		
		return this;
	}

}



//Ŭ�����̸��� ConstructorTest�Դϴ�.
public class ConstructorTest {

	//main()�޼��带 �����߽��ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		
		//noPerson ��ü�� �����մϴ�. ->����Ʈ�����ڰ� ȣ�� �˴ϴ�.
		Person noPerson=new Person();
		
		
		//noPerson ��ü�� �̸��� ����մϴ�.
		System.out.println(noPerson.name);
		
		//noPerson ��ü�� ������ ����մϴ�.
		System.out.println(noPerson.age);
		
		//�ڽ��� �ּҸ� ��ȯ�ϴ� �޼��带 ����Ͽ� noPerson��ü�� person Ŭ���� ������ �ּҸ� ����Ͻÿ�
		//this ���� person Ŭ���� ������ �����մϴ�.
		Person person = noPerson.returnItSelf();
		
		
		//noPerson.returnItSelf() �޼����� ��ȯ���� ����մϴ�.
		System.out.println(person);
	
		//noPerson ��ü(���� ����)�� ����մϴ�.
		System.out.println(noPerson);
		
		
	}

}
