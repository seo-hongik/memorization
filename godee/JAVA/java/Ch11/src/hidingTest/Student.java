//��Ű�� �̸��� hidigTest�Դϴ�.
package hidingTest;


//Ŭ���� �̸��� student�Դϴ�.
public class Student {
	
	//�ʵ�(�������)�� �����մϴ�.
	
	int studentID; 		//�й�
	
	//studentName ������ private���� �����մϴ�.
	private String studentName; //�̸�
	String major; 		//����
	int grade;			//�г�
	

	//�л� �̸��� �������� �޼��带 �����մϴ�.
	//private ������ studentName�� ������ ���� �������� public get()�޼���
	
	public String getStudentName() {
		
		return studentName;
	}
	
	//�л� �̸��� �ο��ϴ� �޼��带 �����մϴ�.

	//private ������ studentName�� ������ ���� �����ϴ� public set()�޼���

	public void setStudentName(String studentName) {
		
		this.studentName = studentName;
		
	}
	

	
	
	
}
