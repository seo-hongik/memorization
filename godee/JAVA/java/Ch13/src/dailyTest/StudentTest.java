//��Ű�� �̸��� dailyTest�Դϴ�.
package dailyTest;

//class�̸��� StudentTest�Դϴ�.
public class StudentTest {
	//main()�޼��尡 �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
			
		Student st1=new Student(1001,"Lee");
		st1.addSubject("����", 100);
		st1.addSubject("����", 50);
		st1.showStudentInfo();
		
		System.out.println("=====================================================================");
		
		Student st2=new Student(1002,"kim");
		st2.addSubject("����", 70);
		st2.addSubject("����", 85);
		st2.addSubject("����", 100);
		st2.showStudentInfo();
		
	}

}