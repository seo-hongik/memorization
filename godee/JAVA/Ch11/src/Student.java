
//Ŭ���� �̸��� Student �Դϴ�
public class Student {
	//������ �Ӽ��� ������ ���߾� �ۼ����ּ���.
	//�ʵ�(�������)�� ���� (����)
	//�й�
	int studentID;
	//�̸�
	String studentName;
	//����
	String major;
	//�г�
	int grade;
	

	
	
	//�޼����� ����
	void showStudentInfor() {
		//�޼����� ����� �����մϴ�.
		//�̸� :studentName
		//����:major
		//���ڿ��� ������ �����ϱ� ���Ͽ�"+"�����ڸ� ����ϰڽ��ϴ�.
		//�ʵ�(��� ����)�� ����Ҷ����� ""(ū����ǥ)�� �L���� �ʽ��ϴ�.
		//"(ū ����ǥ��)���ڿ��� �ǹ��ϹǷ�, ���ڿ� ���۰� ���� �ٿ��ݴϴ�.
		
		System.out.println("�̸���:"+studentName +"�Դϴ�.");
		System.out.println("������"+major+"�Դϴ�");
	}
	
	//�л��� �̸��� ��ȯ�ϴ� �޼��带 ����� �ּ���
	//�޼����� ����
	String getStudentName() {
		//�޼����� ����� �����մϴ�.
		//This method must return a result of type String ������ �߻��մϴ�.
		//�׷��Ƿ� ��ȯ���� �����ؾ��մϴ�.
		
		return studentName;//��ȯ���� ��ȯ���� �ڷ���(type)�� �����ؾ� �մϴ�.
		
	}
	
	//�л��� �̸��� �ο��ϴ� �޼��带 ������ �ּ���
	
	void setStudentName(String name) {
		//�Ű������� ���޹��� name�� ���� �ʵ�(�������) studentName�� �����մϴ�.
		studentName= name;
		
	}
	
	//main �̶�� �ۼ��� ��,ctrl+space bar(�����̽���)�� �����ϴ�.
	//ù��°�� ǥ�õ� 'main - main method' �׸��� �����ϴ�.
	//main()�޼��尡 �����˴ϴ�.
	
	public static void main(String[] args) {
		//Ŭ������ //����(��ü)�̸�=new ������
		
		Student studentA=new Student(); //Student Ŭ���� ����
		//studentA�� �ʵ�(�̸�)�� "���̾�"���� �����մϴ�.
		studentA.studentName ="���̾�";
		
		//studentA �ʵ�(�̸�)�� ����մϴ�.
		System.out.println(studentA.studentName);
		
		//studentA�� getStudentName() �޼��带 ���� ����մϴ�.
		
		System.out.println(studentA.getStudentName());
	
		Student studentB=new Student();
		
		//studentB�� setStudentName(String name) �޼��带 ���� �л��� �̸��� �ο��մϴ�.
		//�л��� �̸�(����)�� �ο��մϴ�.
		studentB.setStudentName("����");
		
		//studentB�� etStudentName() �޼��带 ���� ����մϴ�.
		System.out.println(studentB.getStudentName());
	
		
		
	}
	

}
