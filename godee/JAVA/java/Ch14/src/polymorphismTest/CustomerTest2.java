//package�� polymorphismTest�Դϴ�.
package polymorphismTest;

import java.util.ArrayList;

//class�̸��� CustomerTest2�Դϴ�.
public class CustomerTest2 {

	//main()�޼��尡 �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		//�� ����Ʈ�� �����մϴ�.
		ArrayList<Customer> customerList=new ArrayList<Customer>();
		
		//���� �����մϴ�.
		
		Customer customerA = new Customer(10010,"����ġ");
		Customer customerB =new Customer(10020,"Ʃ��");
		Customer customerC =new GoldCustomer(10030,"����");
		Customer customerD =new GoldCustomer(10040,"��");
		Customer customerE =new VIPCustomer(10050,"���̾�",1234);
	
		//ArrayList add �޼��带 ����� ��ü �迭�� ���� �߰��մϴ�. 
		
		customerList.add(customerA);
		customerList.add(customerB);
		customerList.add(customerC);
		customerList.add(customerD);
		customerList.add(customerE);
		
		for(int i=0; i<customerList.size(); i++) {
			
	
		
			System.out.println(customerList.get(i).showCustomerInfo());

	
			
		}
		
		System.out.println("=================================���ʽ� ������============================");

		int price=10000;
		for(Customer customer: customerList) {
			int cost=customer.calcPrice(price);
			
			System.out.println(customer.getCustomerName()+"����"+cost+"���� �����Ͽ����ϴ�.");
			System.out.println(customer.getCustomerName()+"���� ����Ʈ��"+	customer.bonusPoint+"���Դϴ�.");
	
			
		}
		
		
	
	}

}
