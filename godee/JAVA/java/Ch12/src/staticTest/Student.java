//��Ű�� �̸��� staticTest�Դϴ�.
package staticTest;


//Student Ŭ������ �����մϴ�.
public class Student {
	//�ʵ�(��� ����)�� �����մϴ�.
	
	//static ������ �ν��Ͻ� ������ ������� ���� �����˴ϴ�.
	private static int serialNum=2000;	//�й��� ���ʴ�� �ο��ϱ� ����
	int studentID;						//�л��� ID
	String studentName; 				//�л��� �̸�
	int major;							//����
	int grade; 							//�й�
	
	//������
	
	public Student() {
		
		serialNum++;
		studentID=serialNum;
		
	}
		
	

	//�л��� �̸��� �������� �޼��带 �����մϴ�.
	public String getStudentName() {
		
		
		return studentName;
		
	}
	
	

	//�л��� �̸��� �ο��ϴ� �޼��带 �����մϴ�.
	public void setStudentName(String name) {
		
		studentName=name;
		
	}
	
	//serialNum�� get() �޼���
	
	public static int getSerialNum() {
		int i=10;					//���������� ��밡��
		//studentName="���̾�";		//��������� ���Ұ��� Cannot make a static reference to the non-static field studentName
		return serialNum;
		
	}
	
	//serialNum�� set() �޼���
	public static void setSerialNum(int serialNum) {
		
		Student.serialNum=serialNum;
		
	}
	
	
	
	
	
}