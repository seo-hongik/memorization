//��Ű�� �̸��� classTest�Դϴ�.
package classTest;

//Student Ŭ������ �����մϴ�.
public class Student {
	
	//�ʵ� (�������)�� �����մϴ�.
	
	private String studentName;	//�л��̸�
	private int grade; 			//�г�
	private int money;			//�л��� ������ �ִ� ��
	
	//�л��̸��� ���� ���� �Ű������� �޴� ������
	public Student(String studentName, int money) {
		
		this.studentName=studentName;
		this.money=money;
		
		
	}

	
	//�л��� ������ Ÿ�� 1,000���� �����ϴ� ����� ������ �ż���
	
	public void takeBus(Bus bus) {
		
		bus.take(1000);
		this.money-=1000;
		
		
	}
	//�л��� ����ö�� Ÿ�� 1,500���� �����ϴ� ����� ������ �ż���
	
		public void takeSubway(Subway subway) {
			
			subway.take(1500);
			this.money-=1500;
			
			
			
		}
		
		//�л��� ���� ������ ����ϴ� �ż���
		
		public void showInfo() {
						
			System.out.println("studentName"+"���� ���� ����"+money+"���Դϴ�.");
			
		}
		
		
}
