//��Ű�� �̸��� classTest�Դϴ�.
package classTest;

//Ŭ���� �̸��� studentTest�Դϴ�.
public class StudentTest {
	
	
	//main()�޼ҵ尡 �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		
		//�л� �θ��� �����մϴ�.
		Student studentA=new Student("���̾�",5000);
		Student studentB=new Student("����",10000);
		
		//�뼱 ��ȣ�� 100���� ������ �����մϴ�.
		Bus busA=new Bus(100);
		
		//StudentA�� 100�� ������ ž�ϴ�.
		studentA.takeBus(busA);
		
		//studentA�� ������ ����մϴ�.
		studentA.showInfo();
		
		//���� ������ ����մϴ�.
		busA.showInfo();

		//�뼱 ��ȣ�� 1ȣ���� ����ö�� �����մϴ�.
		Subway subwayA=new Subway("2ȣ��");

		//studentB�� 2ȣ���� ž�ϴ�.
		studentB.takeSubway(subwayA);
		
		//studentB�� ������ ����մϴ�.
		studentB.showInfo();
		
		//����ö ������ ����մϴ�.
		subwayA.showInfo();
		
		
		
	}

}
