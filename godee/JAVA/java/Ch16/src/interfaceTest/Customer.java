//package�̸��� interfaceTest�Դϴ�.
package interfaceTest;

//Customer Ŭ������ �����մϴ�.

//Customer Ŭ������ Buy�� Sell�������̽��� ��� �����մϴ�. 
public class Customer implements Buy,Sell{

	@Override
	public void sell() {
		// TODO Auto-generated method stub
		System.out.println("�����ϱ�");
	}

	@Override
	public void buy() {
		// TODO Auto-generated method stub
		System.out.println("�Ǹ��ϱ�");
	}

	
	
	
}
