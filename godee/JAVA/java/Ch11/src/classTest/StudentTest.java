//��Ű�� �̸��� classTest�Դϴ�.
package classTest;

//���� Ŭ������ �̸��� Student�Դϴ�.

//Student Ŭ������ �����մϴ�.
class Student{
	
	//�ʵ�(�������)
	int studentID; //�й�
	String studentName; //�̸�
	String major; //����	
	int grade; //�г�
}


public class StudentTest {
	// main()�޼��尡 �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		//Ŭ������ ����(��ü)�̸� =new ������;
		
		Student studentA=new Student(); //StudentŬ������ �����մϴ�.
		
		//Student() Ŭ������ �����ϰ�, ���콺 ������ ��ư�� Ŭ���մϴ�.
		//F3Ű�� �����ϴ�.(�Ǵ� open declaration�� Ŭ���մϴ�.)
		//classTest ��Ű�� ���� ���ǵ� StudentŬ������ �̵��մϴ�.
		
		//�ν��Ͻ��� ������ ����� ���ڽ��ϴ�.
		Student studentB=new Student();
		Student studentC=new Student();
		
		//���� ������ ����ϱ�
		//studentA�� ��������, �ּҰ��� �������̶�� �մϴ�.
		System.out.println(studentA);
		System.out.println(studentB);
		System.out.println(studentC);
	}

}
