//��Ű�� �̸��� singletonTest �Դϴ�.
package singletonTest;

//Company class ���� �մϴ�.
public class Company {
	
	//Ŭ���� ���ο� static���� ������ �ν��Ͻ��� �����Ͻÿ�
	private static Company instance = new Company();
	
	
	//private �����ڸ� �����մϴ�.
	private Company() {}
		
	
	//�ܺο��� ������ �� �ִ� public �޼��带 �����Ͻÿ�
	public static Company getInstance() {
		
		if(instance== null) {
			instance =new Company();
		}
		
		return instance;//�����ϰ� ������ �ν��Ͻ��� ��ȯ�մϴ�.
	}
	
}
