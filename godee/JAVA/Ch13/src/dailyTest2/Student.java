//package�� dailyTest�Դϴ�.
package dailyTest2;

import java.util.ArrayList;

//class�� Student�Դϴ�.
public class Student {
	
	
	//�ʵ�(�������)�� �����մϴ�
	
	private int serialNum;						//�й� //static�� ���� �� �ʿ����
	private	String studentName;					//�л��̸�
	private	ArrayList<Subject> subjectList;
	
	
	
	//�Ű������� �ִ� ������

	public Student(int serialNum, String studentName) {
		this.serialNum = serialNum;
		this.studentName = studentName;//���� ���� ���
		subjectList =new ArrayList<Subject>();
		
		
	}	
	
	//�л��� �����ϴ� ������ subjectList �迭�� �ϳ��� �߰��ϴ� �޼��带 �����մϴ�.
	public void addSubject(String name,int score) {
		//������ �����մϴ�.
		Subject subject=new Subject();
		//���� �̸��� �߰��մϴ�.
		subject.setName(name);
		//�����ϴ� ���� ��Ͽ� �߰� �մϴ�.
		subject.setScore(score);
		subjectList.add(subject);
	
		
	
	}
	
	public void showStudentInfo() {
	
		int total=0;
		
	/*for(int i=0; i<subjectList.size(); i++) {
		
		
	}*/
		/*
		�л� ""�� ���� ���񼺼��� ""���Դϴ�.
		
		�л� ""�� ���� ���� ������ ""�� �Դϴ�.
		
		�л� ""�� ������ ""�� �Դϴ�.
		*/
		for(Subject s: subjectList) {
			
			total+=s.getScore();
			
			
			System.out.println("�л�"+studentName+"��"+s.getName()+"��������"+s.getScore());	
		}
		System.out.println("�л�"+studentName+"������"+total+"�Դϴ�.");
		
		
		
		
	}





	
	

}