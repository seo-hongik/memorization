
//package �̸��� inheritanceTest �Դϴ�.
package inheritanceTest;


// class �̸���  CustomerTest1 �Դϴ�.
public class CustomerTest1 {

	
	//main()�� �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/* protected �ٲٱ�*/
		
		//���̾� ��ü�� �����մϴ�.
		Customer customerA=new Customer();
		//customerID�� customerName�� protected �����̹Ƿ� set()�޼ҵ带 ȣ���մϴ�.
		customerA.setCustomerID(10010);
		customerA.setCustomerName("���̾�");
		customerA.bonusPoint=1000;
		//���� ������ ����մϴ�.
		System.out.println(customerA.showCustomerInfo());
		
		//VIP�� �������� �����մϴ�.
		VIPCustomer customerB=new VIPCustomer();
		//customerID�� customerName�� protected �����̹Ƿ� set()�޼ҵ带 ȣ���մϴ�.
		customerB.setCustomerID(10020);
		customerB.setCustomerName("����");
		customerB.bonusPoint=10000;
		//���� ������ ����մϴ�.
		System.out.println(customerB.showCustomerInfo());
		
		
		
	}

}
