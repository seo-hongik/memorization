//��Ű�� �̸��� birthdayTest�Դϴ�.
package birthdayTest;


//Birthday��� Ŭ������ �����մϴ�.


//Ŭ���� �տ� public�� ���̸� The public type BirthDay must be defined in its own file ������ �߻��մϴ�.
//���� �����ڰ� public �� ��� Ŭ���� �̸��� �ڹ����� �̸��� ���ƾ� �մϴ�. (main)�޼��尡 �����ϴ� Ŭ������ ��쿡��


class BirthDay{
	
	//�ʵ�(�������)�� �����մϴ�.
	
	int day;	//��
	int month;	//��
	int year;  	//�⵵
	
	//BirthDay Ŭ������ �⵵(year)�� �ο��ϴ� �޼��带 �����մϴ�.
	public void setYear(int year) {
		this.year = year;
	}
	
	//this ���� ����ϴ� �޼��带 �����մϴ�.
	
	public void printThis() {
		
		System.out.println(this);
	}
	
}
//Ŭ���� �̸��� BirthdayTest �Դϴ�.
public class BirthdayTest {

	//main() �޼��尡 �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//birthDay��ü�� �����մϴ�.
		
		BirthDay birthDay= new BirthDay();
		
		//�³ʳ� ������ 2020���� �����մϴ�.
		birthDay.setYear(2020);
		//���� ����(birthDay ��ü)�� ����մϴ�.
		System.out.println(birthDay);
		//this ���� ����ϴ� printThis() �޼��带 ȣ���մϴ�.
		birthDay.printThis();
	
		
		
	}

}