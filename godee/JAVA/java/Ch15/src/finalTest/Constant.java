//��Ű�� �̸��� finalTest�Դϴ�.
package finalTest;

//Ŭ���� �̸��� Constant �Դϴ�. 
public class Constant {

	//�ʵ� (�������)�� �����մϴ�.
	int num =10;
	//The blank final field NUM may not have been initialized
	//final int NUM; 
	final int NUM =100;
	
	//main()�޼��尡 �����Ǿ����ϴ�.
	public static void main(String[] args) {
		Constant constant = new Constant();
		constant.num= 50;
		System.out.println(constant.num);
		
		
		//The final field Constant.NUM cannot be assigned ������ ���ϴ�.
		//constant.NUM=100;
		System.out.println(constant.NUM);
	}
}
