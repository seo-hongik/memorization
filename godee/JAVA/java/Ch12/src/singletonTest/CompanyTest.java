//��Ű���̸��� singletonTest�Դϴ�.
package singletonTest;


//Ŭ���� �̸��� CompanyTest�Դϴ�.
public class CompanyTest {

	//main()�޼��� �Դϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		//private�� ����Ǿ ������ �� ����
		//Company company = new Company();
		
		
		//Ŭ���� �̸����� getInstance �޼��带 ȣ���� ���� ������ �����մϴ�.
		
		Company myCompanyA= Company.getInstance();
		Company myCompanyB= Company.getInstance();
		
		//�� ������ ���� �ּ����� Ȯ���մϴ�.
		System.out.println(myCompanyA == myCompanyB);
		
		System.out.println(myCompanyA);
		System.out.println(myCompanyA);
		
		
	}

}