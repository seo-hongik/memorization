
//package inheritanceTest;
package inheritanceTest;

//class OverridingTest1
public class OverridingTest1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//�Ϲ� ���� �����մϴ�.
		
		Customer customerA=new Customer(10010,"���̾�");
		customerA.bonusPoint=1000;
		
		//VIP ���� ������ϴ�.
		VIPCustomer customerB= new VIPCustomer(10020,"����",12345);
		customerB.bonusPoint=10000;
		
		int price=10000;
		
		System.out.println(customerA.getCustomerName()+"���� �����ؾ��ϴ� �ݾ���"+customerA.calcPrice(price)+"���Դϴ�.");
		System.out.println(customerB.getCustomerName()+"���� �����ؾ��ϴ� �ݾ���"+customerB.calcPrice(price)+"���Դϴ�.");
		
		

	}

}
