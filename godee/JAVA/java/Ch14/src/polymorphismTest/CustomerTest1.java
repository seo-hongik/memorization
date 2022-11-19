//package�̸��� polymorphismTest�Դϴ�.
package polymorphismTest;


//class �̸��� CustomerTest1�Դϴ�.
public class CustomerTest1 {
	
	
	//main()�޵����� �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		//�Ϲ� ���� �����մϴ�.
		Customer customerA=new Customer();
		//�Ϲ� ���� ���̵� �ο��մϴ�.
		customerA.setCustomerID(10010);
		//�Ϲ� ���� �̸��� �ο��մϴ�.
		customerA.setCustomerName("���̾�");
		//�Ϲ� ���� ���ʽ� ����Ʈ�� �ο��մϴ�.
		customerA.bonusPoint=1000;
		//�Ϲ� ���� ������ ����մϴ�.
		System.out.println(customerA.showCustomerInfo());
		
		//VIP customer�� Customer ������ �����մϴ�
		Customer customerB=new VIPCustomer(10020,"����",1234);
		//VIP ���� ���ʽ� ����Ʈ�� �ο��մϴ�.
		customerB.bonusPoint=10000;
		//VIP���� ������ ����մϴ�.
		System.out.println(customerB.showCustomerInfo());
		
		System.out.println("==========�������� ���ʽ� ���============");
		
		int price=10000;
		
		//���ʽ� ����Ʈ ����,���� ����ϴ� �޼��带 ȣ���մϴ�.
		int priceA=customerA.calcPrice(price);
		
		//���ʽ� ����Ʈ ����,���� ����ϴ� �޼��带 ȣ���մϴ�.
		//VIPCustomer Ŭ������ calcPrice�� ������ �Ǿ�����
		
		int priceB=customerB.calcPrice(price);	
		
		//���� ������ ����մϴ�.
		System.out.println(customerA.getCustomerName()+"����"+priceA+"���� ���� �߽��ϴ�.");
		System.out.println(customerA.showCustomerInfo());
		System.out.println(customerB.getCustomerName()+"����"+priceB+"���� ���� �߽��ϴ�.");
		System.out.println(customerB.showCustomerInfo());

	}

}
