//package�̸��� interfaceTest�Դϴ�.
package interfaceTest;
//Ŭ���� �̸��� CustomerTest �Դϴ�.
public class CustomerTest {

	//main() �޼��带 �����Ǿ����ϴ�. 
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//Customer ��ü�� �����մϴ�. 
		Customer customer=new Customer();
		
		//Customer Ŭ�������� customer Buy �������̽� ���� buyer�� �����Ͽ� �����d �մϴ�. 
		
		Buy buyer= customer;
		//buyer�� �������̽��� �޼��常 ȣ�� �����մϴ�. 
		
	//	System.out.println(buyer.getClass());
		
		buyer.buy();
		
		//Customer Ŭ���� ���� customer�� Sell �������̽� ���� seller�� �����Ͽ� ����ȯ �մϴ�. 
		
		Sell seller=customer;
		
		//System.out.println(seller.getClass());
		seller.sell();
		
		//seller�� ���� Ŭ�������� Customer�� �ٽ� ����ȯ �մϴ�. 
		if(seller instanceof Customer) {
			
			Customer customerA= (Customer)seller;		
			customerA.buy();
			customerA.sell();		
			}
	
		}

}
