//package�� inheritanceTest �Դϴ�;
package inheritanceTest;
//CustomerTest3 class�� �����Ͽ����ϴ�. 
public class CustomerTest3 {

//	main() �޼��尡 �����Ǿ����ϴ�.
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		/*�Ű�����*/
		
		//VIP�� ���� ���� �����մϴ�. 
		VIPCustomer customerB= new VIPCustomer(10020,"����",12345);
		//System.out.println(customerB.showCustomerInfo());
		
		
		//System.out.println(customerB.showCustomerInfo()+customerB.getAgentId());
		System.out.println(customerB.showVIPinfor());
	}

}
