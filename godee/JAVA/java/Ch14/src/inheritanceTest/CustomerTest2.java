//package �̸��� inheritanceTest �Դϴ�.
package inheritanceTest;


//class �̸��� CustomerTest2 �Դϴ�.
public class CustomerTest2 {
	
	
	//main()�޼ҵ尡 �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		/*�� �Ű�����*/
		
		//���� Ŭ������ �����մϴ�.
		VIPCustomer customerB= new VIPCustomer();
		customerB.setCustomerID(10020);
		customerB.setCustomerName("����");
		customerB.bonusPoint=10000;
		//���� ������ ����մϴ�.
		System.out.println(customerB.showCustomerInfo());
			
	}

}
