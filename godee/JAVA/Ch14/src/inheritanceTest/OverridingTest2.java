//package�̸��� inheritanceTest�Դϴ�.
package inheritanceTest;

//OverridingTest2 Ŭ����
public class OverridingTest2 {

	//main()�� �����Ǿ����ϴ�
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Customer vc = new VIPCustomer(10030,"������",67890);
		vc.bonusPoint=1000;
		System.out.println(vc.getCustomerName()+"���� �����ؾ��ϴ� �ݾ���"+vc.calcPrice(10000)+"���Դϴ�.");

	}

}
