//package�̸��� inheritanceTest�Դϴ�.
package inheritanceTest;
// Customer class�� ���ǵǾ����ϴ�.
public class Customer {
	
	//�ʵ�(�������)�� �����Ͻÿ�
	protected int customerID;		//�����̵�
	protected String customerName;	//���̸�
	protected String customerGrade;	//�����
	int bonusPoint;					//���ʽ� ����Ʈ
	double bonusRatio;				//���� ����

	//����Ʈ �����ڸ� �����մϴ�.
	public Customer(){
		customerGrade="SLIVER";		//�⺻���
		bonusRatio=0.01;			//���ʽ� ����Ʈ �⺻ ���� ����

		//���� Ŭ���� ������ �� �ܼ� ��¹��� �ۼ��մϴ�. 
		System.out.println("customer() �����ڸ� ȣ���մϴ�.");


	}

	//�Ű������� �ִ� ������
	public Customer(int customerID,String customerName ) {
		this.customerID=customerID;
		this.customerName=customerName;
		customerGrade="SLIVER";
		bonusRatio=0.01;

		System.out.println("Customer(int, String) �����ڸ� ȣ���մϴ�.");

	}

	//��� �Լ��� �����մϴ�

	//���ʽ� ����Ʈ ���� ���� ���� ����ϴ� �޼���
	public int calcPrice(int price) {

		bonusPoint +=price*bonusRatio;

		return price;


	}


	//protected ������ ������ ������ �ܺο��� ����� �� �ֵ��� get() set() �޼��带 �߰��մϴ�.

	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerGrade() {
		return customerGrade;
	}

	public void setCustomerGrade(String customerGrade) {
		this.customerGrade = customerGrade;
	}


	//�� ������ ��ȯ�ϴ� �żҵ�
	public String showCustomerInfo() {

		return customerName+"���� �����"+customerGrade+"�̸�, ���ʽ�����Ʈ��"+bonusPoint
				+"�Դϴ�.";	

	}

}
