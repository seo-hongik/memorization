//��Ű�� �̸��� inheritanceTest�Դϴ�.
package inheritanceTest;

//Ŭ���� �̸��� OverridingTest3 �Դϴ�.
public class OverridingTest3 {
	
	//main() �޼��尡 ���� �Ǿ����ϴ�.
	public static void main(String[] args) {
		
		int price=10000;
		
		//Customer �ӽ��Ͻ��� �����մϴ�.
		Customer customerA= new Customer(10010,"���̾�");
		System.out.println(customerA.getCustomerName()+"���� �����ؾ��ϴ� �ݾ���"+customerA.calcPrice(price)+"���Դϴ�.");
		
		//VIPCustomer �ν��Ͻ��� �����մϴ�.
		
		VIPCustomer customerB=new VIPCustomer(10020,"����",12345);
		System.out.println(customerB.getCustomerName()+"���� �����ؾ��ϴ� �ݾ���"+customerB.calcPrice(price)+"���Դϴ�");
		
		//VIPCustomer �ν��Ͻ��� Customer ������ ��ȯ�մϴ�. 
		
		Customer vc=new VIPCustomer(10030,"������",67890);
		System.out.println(vc.getCustomerName()+"���� �����ؾ� �ϴ� �ݾ���"+vc.calcPrice(price)+"���Դϴ�.");
		
	}
	

}
